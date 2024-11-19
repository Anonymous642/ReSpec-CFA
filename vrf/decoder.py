import argparse
import math
import os
from decoder_constants import END_ADDR, SUBPATHS_DEFS

HUFFMAN = ""
SUBPATHS = ""

def check_path(parser, path):
    """
    Checks if the supplied path is valid
    :param parser: (argparse.ArgumentParser) The parser that is parsing the path
    :param path: (str) The file/directory path being validated
    :return: (str) The path if it is valid, otherwise an argparse error is raised 
    """
    if not os.path.exists(path):
        parser.error(f"Directory {path} does not exist!")
    else:
        return path
    

def parse_args():
    """
    builds a argument parser for the program and parses any matching command line input
    :return: (?) the parsed command line input
    """

    parser = argparse.ArgumentParser()
    parser.add_argument("-b", "--baseline", type=lambda x: check_path(parser, x), required=True, help="Path to the base line directory.")
    parser.add_argument("-d", "--directory", type=lambda x: check_path(parser, x), default=".", help="Path to the log file directory. Defaults to current directory")
    parser.add_argument("-s", "--spec", action="store_true", help="Indicates if subpath speculations should be expanded (if present)")
    parser.add_argument("-p", "--prefix", action="store_true", help="Indicates if the log is prefix encoding is present and should be decoded")
    parser.add_argument("-l", "--prefix-length", type=int, default=2, help= "prefix encoding length used")
    parser.add_argument("-hf", "--huffman", action="store_true", help="Indicates if the log is huffman encoded is present and should be decoded")

    return parser.parse_args()


def load_logs(directory):
    """
    Iterates through the supplied directory, loading all CFLog slices into a single CFLog
    :param directory: (str) the log directoty
    :return: (str) the combined CFLog
    """
    master_log = ""
    logfile_count = 0

    # This loop assumes the log slices are sequentially numbered starting at 0.cflog
    while(True):
        logfile = os.path.join(directory, f"{logfile_count}.cflog")

        if not os.path.exists(logfile):
            break
        else:
            with open(logfile, "r") as logfile_fp:
                for line in logfile_fp.readlines():
                    line= line.strip()
                    master_log += line
            logfile_count += 1

    return master_log


def load_huffman(path):
    """
    Loads the supplied huffman encoding table
    :param path: (str) the directory in which the encoding table is stored
    """
    global HUFFMAN

    HUFFMAN = dict()
    with open(os.path.join(path, "huffman_decoding.txt"), "r") as huffman_file:
        for line in huffman_file.readlines():
            line = line.strip()
            encoding, symbol = line.split(": ")
            HUFFMAN[encoding] = symbol
        

def decode_huffman(cflog):
    """
    Decodes a huffman encoded CFLog using the global huffman table
    :param cflog: (str) The huffman encoded log
    :return: (str) the decoded log 
    """
    log_bits = ""
    for character in cflog:
        log_bits += bin(int(character,16))[2:].zfill(4)
    
    decoded_log = ""
    current_encoding = ""
    for log_bit in log_bits:
        current_encoding += log_bit
        if current_encoding in HUFFMAN.keys():
            decoded_log += HUFFMAN[current_encoding]
            current_encoding = ""
    
    return decoded_log


def expand_prefix(cflog, prefix_length, subpath_code):
    """
    Expands/decodes a prefix encoded log
    :param cflog: (str) The prefix encoded log
    :param prefix_length: (int) The size of the prefix in nibbles (hex charaters)
    :param subpath_code: (str) The symbol used to mark subpath-IDs in CFLog
    :return: (str) the decoded log
    """
    prefix_length = prefix_length*2
    suffix_length = 8 - prefix_length
    active_prefix = ""
    decoded_log = ""
    i = 0
    while(i<len(cflog)):
        if cflog[i:i+suffix_length] == "3"*suffix_length:  # New prefix
            i += suffix_length
            active_prefix = cflog[i:i+prefix_length]
            i += prefix_length
        elif cflog[i:i+2] == "ff" and active_prefix[:2] != "fe": # Loop/repeat counter
            # The RoT always ends at fefffffe hence we screen on "fe" to avoid
            #   confusing the end of the application with a loop
            decoded_log += "ff" + cflog[i:i+6]
            i += 6
        elif cflog[i:i+2] == subpath_code:  # Subpaths
            decoded_log += subpath_code*2 + cflog[i:i+4]
            i += 4
        else:  # encoded entries
            # if not prefix exists all previous entries must be supbaths and the current entry must
            #   share the same prefix as the previous subpaths final control flow transfer. Thus
            #   we backtrack to the previous subpath entry and claculate the appropriate prefix
            if active_prefix == "":
                j = i-2
                prev_symbol = cflog[j:j+2]
                while (prev_symbol != subpath_code):
                    j -= 2
                    prev_symbol  = cflog[j:j+2]
                subpath = SUBPATHS[f"{subpath_code*2}{cflog[j:j+4]}"]
                active_prefix = subpath[-8:-suffix_length]
            decoded_log += active_prefix + cflog[i:i+suffix_length]
            i += suffix_length
        
    return decoded_log
            

def replace_subpaths(cflog):
    """
    Repalces subpath-ID in CFLog with their corrseponding control flow transfers
    :param cflog: (str) the subpath-encoded CFLog
    :return: (str) the decoded log
    """
    decoded_log = ""
    i = 0 
    while(i < len(cflog)):
        entry = cflog[i:i+8]
        if entry in SUBPATHS.keys():
            subpath = SUBPATHS[entry]
            count = 1
            repeating = cflog[i+8:i+12]
            if repeating == "ffff":
                i += 8
                count = int(cflog[i+4:i+8], 16)
            for j in range(count):
                decoded_log += subpath
        else:
            decoded_log += entry
        i += 8
    return decoded_log


def main():
    global SUBPATHS

    args = parse_args()
    decoded_log = load_logs(args.directory)
    baseline = load_logs(args.baseline)

    # Edit this key to load the apropriate subpaths for the selected test
    SUBPATHS = SUBPATHS_DEFS["TEMP"]
    
    
    if args.huffman:
        load_huffman(args.directory)
        decoded_log = decode_huffman(decoded_log)

    if args.prefix:
        sub_ids = SUBPATHS.keys()
        subpath_code = ""
        for key in sub_ids:
            subpath_code = key[:2]
            break
        decoded_log = expand_prefix(decoded_log, args.prefix_length, subpath_code)

    if args.spec:
        decoded_log = replace_subpaths(decoded_log)

    # remove any extra bits due to huffman encoding
    decoded_log = decoded_log[:decoded_log.index(END_ADDR)+8]
    
    print(f"Recieved log matches baseline: {baseline == decoded_log}")

    # Uncomment to see decode log (debugging)
    #with open("./cflog/test_decoding.txt", "w") as ofp:
    #    for i in range(0, len(decoded_log), 8):
    #        ofp.write(decoded_log[i:i+8]+"\n")


if __name__ == "__main__":
    main()
