import argparse
import threading
import os.path
from alphabet import NIBBLE_ALPHABET, BYTE_ALPHABET

GREEN = "\033[38;2;0;255;0m"
RED = "\033[38;2;255;0;0m"
YELLOW = "\033[38;2;255;246;0m"
END = "\033[0m"


class Node:
    def __init__(self, frequency, symbol, left=None, right=None):
        self.frequency = frequency
        self.symbol = symbol
        self.left = left
        self.right = right
        self.branch = ""

    def is_leaf(self):
        return self.left is None and self.right is None

    def __str__(self):
        return f"Node({self.symbol}, {self.frequency}, {self.left}, {self.right})"


def check_path(parser, path):
    """
    Checks if the supplied path is a valid path on the system
    :param parser: (argparse.ArgumentParser) The parser fetching the path
    :param path: (str) The file/directory path read in by parer
    :return: path if it exists on the system. Otherwise, an argparse error is triggered
    """

    if not os.path.exists(path):
        parser.error(f"{RED}ERROR{END}: Directory {path} does not exist!")
    else:
        return path


def parse_args():
    """
    Parses command line input
    :return: The parsed command line arguments
    """

    parser = argparse.ArgumentParser()

    parser.add_argument("-d", "--directory", type=lambda x: check_path(parser, x), default=".",
                        help="Path to the Log file directory. Defaults to the current directory")
    parser.add_argument("-a", "--alphabet", type=str, choices=["nibble", "byte"], default="byte",
                        help="The symbol alphabet to use. Defaults to all possible Byte values (in hex)")
    parser.add_argument("-f", "--format", type=str, choices=["msp", "arm"], default="arm",
                        help="The architecture of the device that created the logs. Indicates how the log files "
                             "are structured. Defaults to 'arm'")
    parser.add_argument("-o", "--output_directory", type=str, default=".", help="The name of a directory to save the encodings to. " \
                        "Defualts to the current directory")

    return parser.parse_args()


def read_logs(path, arch):
    """
    Parses and combines log files into a single log string
    :param path: (str) The path to log file directory
    :param arch: (str) Which architecture the logs are from
    :return: master_log - (str) A single string representation of all the log slices
    """

    master_log = ""

    i = 0
    log_path = os.path.join(path, f"{i}.cflog")
    while os.path.exists(log_path):
        with open(log_path, "r") as fp:
            entries = fp.readlines()

        if arch == "msp":
            for entry in entries[1:-2]:
                master_log += entry.strip().zfill(8)
        elif arch == "arm":
            for entry in entries[:]:
                master_log += entry.strip().zfill(8)

        i += 1
        log_path = os.path.join(path, f"{i}.cflog")

    return master_log


def call_the_end_times(alphabet, bottom, top, number):
    print(f"Thread {number} starting")
    for i in range(bottom, top):
        #print(i)
        symbol = hex(i)[2:]
        symbol = symbol.zfill(4)
        alphabet[symbol] = 0

    print(f"Thread {number} done")


def may_god_have_mercy_on_us_all():
    print("building something unholy")
    alphabet = {}
    step = 2**16//8
    threads = []
    for j in range(8):
        thread = threading.Thread(target=call_the_end_times, args=(alphabet, j*step, (j+1)*step, j))
        threads.append(thread)

    for thread in threads:
        thread.start()
    
    for thread in threads:
        thread.join()

    print("alphabet built but at what cost")
    return alphabet


def calculate_frequencies(master_log, alphabet, split):
    """
    Determines the frequency of symbols in the log
    :param master_log: (str) The log being compressed
    :param alphabet: (dict(str:int)) The symbol alphabet
    :param split: (int) The largest symbol size
    """

    log_size = len(master_log)
    for i in range(0, log_size, split):
        sub_log = master_log[i:i+split]
        sub_log = sub_log.zfill(split)

        alphabet[sub_log] += 1


def build_huffman_tree(alphabet):
    """
    Builds the huffman tree from our symbol frequencies. Heavily ripped from geeksforgeeks.org
    :param alphabet: dict(str:int) All the symbols and their frequencies
    :return: (Node) The root node of the huffman tree
    """
    nodes = []
    for key, value in alphabet.items():
        nodes.append(Node(value, key, None, None))
    nodes.sort(key=lambda node: node.frequency)

    while len(nodes) > 1:
        left = nodes.pop(0)
        right = nodes.pop(0)

        left.branch = "0"
        right.branch = "1"

        nodes.append(Node(left.frequency+right.frequency, "glue", left, right))
        nodes.sort(key=lambda node: node.frequency)

    return nodes[0]


def build_encodings(alphabet, node, code):

    code += node.branch

    if node.left is not None:
        build_encodings(alphabet, node.left, code)
    if node.right is not None:
        build_encodings(alphabet, node.right, code)

    if node.is_leaf():
        alphabet[node.symbol] = code


def output_codes(alphabet, path):
    """

    :param alphabet: (dict(str:str)) The updated symbol table with symbol encodings
    :param path: (str) The name of an output file
    :return: None
    """

    encoding_file = open(f"{path}/huffman_encoding.txt", "w")
    length_file = open(f"{path}/huffman_lengths.txt", "w")
    decoding_file = open(f"{path}/huffman_decoding.txt", "w")
        
    for symbol, encoding in alphabet.items():
        encoding_length = len(encoding)
        hex_encoding = hex(int(encoding.zfill(8), 2))

        encoding_file.write(f"{hex_encoding},\n")
        length_file.write(f"{encoding_length},\n")
        decoding_file.write(f"{encoding}: {symbol}\n")

    encoding_file.close()
    decoding_file.close()


def main():

    cmd_args = parse_args()
    print(f"Fetching logs from {cmd_args.directory}: ", end="")
    master_log = read_logs(cmd_args.directory, cmd_args.format)
    print(f"{GREEN}COMPLETE{END}")

    if(cmd_args.alphabet == "nibble"):
        alphabet = NIBBLE_ALPHABET
        symbol_size = 1
    elif(cmd_args.alphabet == "byte"):
        alphabet = BYTE_ALPHABET
        symbol_size = 2
    elif(cmd_args.alphabet == "address"):
        alphabet = may_god_have_mercy_on_us_all()
        symbol_size = 4
    else:
        print(f"{RED}Invalid alphabet: First off how, second perish{END}")
        exit(-1)

    print(f"Calculating frequencies: ", end="")
    calculate_frequencies(master_log, alphabet, symbol_size)
    print(f"{GREEN}COMPLETE{END}")

    print(f"Building Huffman tree: ", end="")
    root = build_huffman_tree(alphabet)
    print(f"{GREEN}COMPLETE{END}")

    print(f"Generating encodings: ", end="")
    build_encodings(alphabet, root, "")
    print(f"{GREEN}COMPLETE{END}")

    output_codes(alphabet, cmd_args.output_directory)

if __name__ == '__main__':
    main()
