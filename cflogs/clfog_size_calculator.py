import argparse
import os


# I really should have made these generic rather than copying them to each script. I have failed my software engineer overlords
def check_path(parser, path):
    """
    Validates that the supplied directory paths are valid
    :param parser: (argparse.ArgumentParser) The ArgumentParser instance
    :param path: (str) The user supplied directory to check
    :return: (str) The path if valid
    """
    if not os.path.exists(path):
        parser.error(f"Directory {path} does not exist!")
    else:
        return path
    

def parse_args():
    """
    Gets command line input
    :return: (?) The scanned inputs
    """
    parser = argparse.ArgumentParser()
    parser.add_argument("-d", "--directory", type=lambda x: check_path(parser, x), default=".", help="Path to the log file directory. Defaults to current directory")
    parser.add_argument("-e", "--encodings", type=lambda x: check_path(parser, x), default=".", help="path to the huffman encodings to use. Defaults to the \
                        hufffman_decoding.txt file in the same directory as the log file.")
    parser.add_argument("-hf", "--huffman", action="store_true", help="Indicates if the log is huffman encoded is present and should be decoded")
    

    return parser.parse_args()


def load_logs(directory):
    """
    Reads the received CFLogs into a single master string
    :param directory: (str) The log file directory
    :return: (str) The string representation of all logs recieved
    """
    master_log = ""
    logfile_count = 0

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


def load_huffman_encodings(encoding_file):
    """
    Loads the huffman encoding used to decode the recived logs
    :param encoding_file: (str) The file containing the huffman encodings
    :returnsL huffman-decodings (dict(str, str)) A dictionary of huffman decodings (bits to hex)
    """
    huffman_decodings = dict()
    with open(encoding_file, "r") as huffman_file:
        for line in huffman_file.readlines():
            line = line.strip()
            encoding, symbol = line.split(": ")
            huffman_decodings[encoding] = symbol
    return huffman_decodings


def huffman_decode(decodings, cflog):
    """
    Decodes the huffman logs to spot check for extra bits sent by the server
    :param decodings: (dict(str, str)) A dictionary of huffman codes to use when decoding the log
    :param cflog: (str) The encoded log to check
    :returns: (str) The decoded log
    """

    log_bits = ""
    for character in cflog:
        log_bits += bin(int(character,16))[2:].zfill(4)
    
    # Decode the bitstream
    decoded_log = ""
    current_encoding = ""
    for log_bit in log_bits:
        current_encoding += log_bit
        if current_encoding in decodings.keys():
            decoded_log += decodings[current_encoding]
            current_encoding = ""

    return decoded_log


def calculate_size(cflog, huffman, encodings):
    """
    Calculates the number of bytes in the log
    :param cflog: (str) The complete cflog
    :returns: The size of the log in bits
    """
    if huffman:
        huffman_decodings = load_huffman_encodings(encodings)
        test_cflog = huffman_decode(huffman_decodings, cflog)
        print(f"overhang: {test_cflog[test_cflog.index('fefffffe')+8:]}\nlength: {len(test_cflog[test_cflog.index('fefffffe')+8:])}")
    else:
        cflog = cflog[:cflog.index("fefffffe")+8]

    return len(cflog) * 4


def main():
    """ 
    Calculates the complete size of the recieved cflog slices
    """

    cmd_args = parse_args()
    master_log = load_logs(cmd_args.directory)
    encoding_file = os.path.join(cmd_args.directory, "huffman_decoding.txt")
    if cmd_args.encodings != ".":
        encoding_file = cmd_args.encodingsS
    num_bits = calculate_size(master_log, cmd_args.huffman,encoding_file)

    print(f"Size in bits: {num_bits}\n  bytes: {num_bits/8}\n  addresses: {num_bits/32}")


if __name__ == "__main__":
    main()

