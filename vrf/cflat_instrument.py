
# Execution : 
#
# python C-FLAT_instrummenter.py --path NonSecure/Debug/Assembly --file main.s --func main --secfun SECURE_GetRtcSecureStatus --arch armv8-m33
#
import argparse
from fileinput import filename
from inspect import Parameter
import os,sys
from sqlite3 import paramstyle 
from os.path import exists
import networkx as nx
import random 
from dataclasses import dataclass
import copy 

def print_warning(text):
    print(bcolors.WARNING + "Warning: " + text + bcolors.ENDC)

def print_error(text):
    print(bcolors.FAIL + "ERROR: " + text + bcolors.ENDC)

def print_message(text):
    print(bcolors.OKGREEN + "MESSAGE: " + text + bcolors.ENDC)

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'



##  ADD MORE ARCHITECTURES HERE
            # |
            # |
            # V
def set_architecture_instructions(arch):
    '''
    Define the instructions of the architecture to be used
    ''' 
    global list_of_branch_functions_armv8
    global list_of_conditional_branch_functions_armv8
    if arch == 'armv8-m33':
        list_of_branch_functions_armv8 = [ 'b','bl','beq','bne','bx','blx','bgt','blt','ret']
        list_of_conditional_branch_functions_armv8 = ['beq','bne','bgt','blt']

### global variable
def init_global():
    global secure_funcs,unreacheble_funcs,called_funcs,query_funcs,AssemblyFiles,hash_list,map_func_to_file,inst_template,verbose,debbug

#     inst_template = """
# \tpush\t{r0}\t@ C-FLAT LOG
# \tmovs\tr0, <<HASHVALUE>>\t@ C-FLAT LOG
# \tbl\t<<SECUREFUNC>>\t@ C-FLAT LOG
# \tpop\t{r0}\t@ C-FLAT LOG
# """

    ## CHANGE HERE ASM CODE TO BE ADDED 
    inst_template = "\tbl\t<<SECUREFUNC>>\t@ C-FLAT LOG"
    ##
    secure_funcs = []
    unreacheble_funcs = []
    called_funcs = []
    query_funcs = []
    AssemblyFiles  = {}
    hash_list = []
    map_func_to_file = {}
    verbose = True

def gen_hash32bits():
    global hash_list
    h = hex(random.getrandbits(32))
    while (h in hash_list):
        h = hex(random.getrandbits(32))
    hash_list.append(h)
    return h

class GraphMainNode():
    def __init__(self):
        self.first_node = None
        self.graph_mapping = {}
        self.count = 0
        self.names = []
        return

    @property
    def nodes(self):
        return self.graph_mapping

    @property
    def head(self):
        return self.first_node  
    
    def set_head(self,node):
        assert type(node) is type(GraphNode())
        self.first_node = None
    
    def add_new_node(self,name,range):
        if name not in self.graph_mapping:
                self.graph_mapping[name] = GraphNode(name,range)
                self.names.append(name)
        return  self.graph_mapping[name]
    
    def find_node(self,name):
        if name in self.graph_mapping:
            return self.graph_mapping[name]
        return None

class GraphNode():
    def __init__(self,name,range):
        self.file_name = None
        self.father_name = None
        self.name = name
        self._edges = []
        self._edges_file_names = []
        self._edges_names = []
        self.node_range = range
        self._tracked = False
        self.hash = gen_hash32bits()
        return

    def set_tracked(self):
        self._tracked = True

    @property
    def tracked(self):
        return self._tracked 

    @property
    def edges(self):
        return self._edges

    @property
    def edges_names(self):
        return self._edges_names
    
    def add_edge_names(self,name):
        if name not in self._edges_names:
            self._edges_names.append(name)
            return False
        else :
            return True

def get_parser():
    '''
    Parse the arguments of the program
    Return:
        object containing the arguments
    '''
    parser = argparse.ArgumentParser(description='C-FLAT instrumentation.')
    parser.add_argument('--path', metavar='N', type=str, nargs='+',
                        help='Path to the directory where the assembly codes are.')
    parser.add_argument('--func', metavar='N', type=str, nargs='+',
                        help='Name of the main function to be tracked in the attestation.')
    parser.add_argument('--file', metavar='N', type=str, nargs='+',
                        help='File where the function to be attested is.')
    parser.add_argument('--secfun', metavar='N', type=str, nargs='+', 
                        default="SECURE_CFLAT_SecureLogger",
                        help='Name of the function that will be called in the Secure World to log the attestation.')
    parser.add_argument('--arch', metavar='N', type=str, nargs='+',
                        default="armv8-m33",
                        help='Processor architecture. :\nAvailables: armv8-m33')
    parser.add_argument('-d','--debbug',action='store_true', help='Consider the debbug code')
    parser.add_argument('-ie','--inst-end',action='store_true', help='Intrument beginning and end of the node')

    args = parser.parse_args()
    return args

def create_graph_from_nodes(node_names,node_range):
    graph = GraphMainNode()
    for x,y in zip(node_names,node_range):
        if x.lower().find('debug')!=-1:
            continue
        graph.add_new_node(x,y)
# print 
    # print(len(graph.nodes))
    # print(graph.nodes)
    return graph

def find_nodes(file_name,file_lines):
    '''
    Given a set of assembly instructions, this functions separate it into functions and subfunctions to be used in the graph creation
    Return:
        node_names : List of names of the functions and subfunctions
        node_range : Initial and final Position of function/subfuncton  at "file_lines" input
    '''
    node_names = [file_name]
    node_range = []
    main_name_pos = 0
    init_pos = 0
    for i,c in enumerate(file_lines):
        if c.startswith('\t') or c.startswith('\n') or c.startswith(' ') or c.startswith('@'):
            continue
        if c.startswith('.'):
            node_range.append([init_pos,i-1])
            init_pos = i+1
            node_names.append(node_names[main_name_pos]+c.split(':')[0])
        else:
            node_range.append([init_pos,i-1])
            init_pos = i+1
            main_name_pos = len(node_names)
            node_names.append(c.split(':')[0])
    node_range.append([init_pos,i-1])
    return node_names,node_range

def read_assembly_file(file_name):
    '''
    This function receive the .s file name and read its lines.
    Return : 
        List with the lines of the assembly as strings
    '''
    assert file_name.endswith('.s')
    if not(exists(file_name)) :
        raise NameError(f'File {file_name} not found !!')
    with open(file_name,'r') as f :
        file_lines = f.readlines()
    file_lines = [x.replace('\n','') for x in file_lines if x != '\n']
    return file_lines

def find_branch_funcs(file_lines):
    '''
    This function receives the lines of the assembly code (that is also the return of function "read_assembly_file") and add identifiers after each branch 
    Return :
        the return of this function is a list where each string represents one line of the assembly code, with extra items that are the branch identifiers (._@@EB@@_<<identifier_ID>>:)
        ex: 
        Input list :
        	bl	SECURE_GetRtcSecureStatus
	        .loc 1 101 3
        Output list:
        	bl	SECURE_GetRtcSecureStatus
        ._@@EB@@_3:
            .loc 1 101 3
    '''
    file_lines.reverse()
    auxiliar_index_counter = 0
    for i in reversed(range(len(file_lines))):
        if file_lines[i].startswith('\t') and file_lines[i].split('\t')[1] in list_of_branch_functions_armv8:
            for j in reversed(range(i)):
                if file_lines[j].startswith('\t'):
                    if file_lines[j].startswith('\t.') or file_lines[j].startswith('\@'):
                        continue
                    else:
                        file_lines.insert(i,f'._@@EB@@_{auxiliar_index_counter}:')
                        auxiliar_index_counter+=1
                        break
                else:
                    break
    file_lines.reverse()
    # for x in file_lines[80:150]:
    #     print (x)
    return file_lines

def clean_nodes(file_lines,node_names,node_range,_filename):
    last_address = node_range[-1][1]
    for i in reversed(range(len(node_names))):
        if node_names[i].find('.') != -1:
            have_intructions = False
            for k in range(node_range[i][0],node_range[i][1]+1):
                if file_lines[k].startswith('\t.')or file_lines[k].startswith('\t@'):
                    continue
                else :
                    have_intructions = True
                    break
            if not have_intructions:
                node_names.pop(i)
                node_range.pop(i)
        else :
            if node_names[i] in map_func_to_file:
                print(bcolors.WARNING +f"|WARNING|: More than one definition of function {node_names[i]} !!!!!!!!" +  bcolors.ENDC)
                print(bcolors.WARNING +f"    Value: \"{map_func_to_file[node_names[i]] }\" will be replaced to : \"{_filename}\"  " +  bcolors.ENDC)
            else :
                map_func_to_file[node_names[i]] = _filename
            node_range[i][1] = last_address
            last_address = node_range[i][0]-2
    return node_names,node_range

def save_temp(file_lines,_filename,path_to_assembly_files,extension):
    with open(os.path.join(path_to_assembly_files, extension+_filename),'w') as f:
        for x in file_lines:
            f.write(x)
            f.write('\n')

def save_final(instruction_template_intrument,extension = 'temp__inst_'):
    files = list(AssemblyFiles.keys())
    for f in files:
        path = AssemblyFiles[f]['path']
        file_lines = AssemblyFiles[f]['code']
        graph_map = AssemblyFiles[f]['graph'].graph_mapping
        with open(os.path.join(path, extension+f),'w') as f:
            func = ''
            for idd,x in enumerate(file_lines):
                
                if x.find(":")!=-1 and not x.startswith('.') and not x.startswith('\t'):
                    func = x.replace(':', '')

                if not x.startswith('\t') and not x.startswith('\n') and not x.startswith('#') and not x.startswith('@'):
                    if x.startswith('.'):
                        file_header = func+x.replace(':','')
                    else:
                        file_header = func

                    if x.find('_@@') == -1:
                        f.write(x)
                        f.write('\n')
                    if file_header in graph_map:
                        if graph_map[file_header].tracked:
                            if  not file_lines[idd+1].startswith('.'):
                                f.write(instruction_template_intrument)
                                f.write('\n')
                else:
                    f.write(x)
                    f.write('\n')
    return

def gen_file_info (_filename,path_to_assembly_files):
    file_lines = read_assembly_file(os.path.join(path_to_assembly_files,_filename))
    file_lines = find_branch_funcs(file_lines)
    #save_temp(file_lines,_filename,path_to_assembly_files,'temp__')

    node_names,node_range = find_nodes(_filename,file_lines)
    node_names,node_range = clean_nodes(file_lines,node_names,node_range,_filename)
    
    graph = create_graph_from_nodes(node_names,node_range)

    global AssemblyFiles
    if _filename not in AssemblyFiles:
        AssemblyFiles[_filename] = {}
        AssemblyFiles[_filename]['path'] = path_to_assembly_files
        AssemblyFiles[_filename]['graph'] = graph
        AssemblyFiles[_filename]['node_name_list'] = node_names
        AssemblyFiles[_filename]['node_name_range'] = node_range
        AssemblyFiles[_filename]['code'] = file_lines
    return

def trace_function_control_flow():
    if len(query_funcs) == 0:
        return
    f = query_funcs.pop(0)
    if f in called_funcs:
        trace_function_control_flow()
        return 
    else:
        called_funcs.append(f)
        
    if f in map_func_to_file:
        func_file = map_func_to_file[f]
        if verbose:
            print (bcolors.OKGREEN +f"|MESSAGE| Tracing Function \"{f}\" from file \"{func_file}\""+ bcolors.ENDC)
        graphhead = AssemblyFiles[func_file]['graph']
        code = AssemblyFiles[func_file]['code']
        graph = graphhead.graph_mapping[f]
        graph.set_tracked()
      #  print(graph.node_range)
      #  print(graphhead.graph_mapping)
        
        ## Find each function  called during the evaluated function 
        for it in  range(graph.node_range[0],graph.node_range[1]+1):
            if code[it].startswith('\t'):
                cmds = code[it].split('\t')
                if cmds[1] in list_of_branch_functions_armv8:
                    if cmds[2] not in query_funcs and cmds[2].find('.')==-1 and  cmds[2]!='lr':
                        query_funcs.append(cmds[2])
            if code[it].startswith('.'):
                f_ = f+code[it].replace(':','')
                if f_ in graphhead.graph_mapping:
                    graphhead.graph_mapping[f_ ].set_tracked()
                  #  print(f+code[it].replace(':',''))
           # print(code[it])
      #  print(query_funcs)
    else :
        print(bcolors.FAIL + f"Warning : Function {f} cannot be Tracked !!!!!!!! "+ bcolors.ENDC)
    trace_function_control_flow()

def main():
    args = get_parser()
    path_to_assembly_files = args.path[0]
    main_file_name = args.file[0]
    functions_to_be_attested = args.func
    secure_function_name = args.secfun[0]
    instruction_template_intrument = inst_template.replace("<<SECUREFUNC>>",secure_function_name)
    arch = args.arch[0]
    debbug=args.debbug
    set_architecture_instructions(arch)
    files_list = [x for x in  os.listdir(path_to_assembly_files) if x.endswith('.s')]
    for f in files_list:
        if not f.startswith('temp__'):
            gen_file_info (f,path_to_assembly_files)
    # Add function to be attested
    global query_funcs
    print(functions_to_be_attested)
    query_funcs = functions_to_be_attested
    trace_function_control_flow()
    save_final(instruction_template_intrument)
    #print(map_func_to_file)

if __name__ == "__main__":
    init_global()
    main()
