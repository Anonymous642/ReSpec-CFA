import sys

ALPHABET_SIZE = 256
FILE = "huffman_decoding.txt"
INTERMEDIATE_PATHS = ["huffman/", "combos/prefix_huff/", "combos/spec_huff/", "combos/all/"]

APPS = ["geiger/", "gps/", "mouse/", "syringe/", "temp/", "ultra/"]


def compute_encoding_size(encoding_file):
    """
    Computes the actual an padded size of the provided huffman codes
    :param encoding_file: (str) - The file containing the huffman codes to count
    :return: raw_encoding_size (int) - The total bit count of all huffman codes provided
    :return: adjusted_encoding_size (int) - The total bit count of all huffman codes provided where each
       code is padded to the nearest byte boundry 
    """
    raw_encoding_size = 0
    adjusted_encoding_size = 0

    with open(encoding_file, "r") as huff_table:
        for line in huff_table.readlines():
            encoding = line.strip().split(":")[0]
            encoding_len = len(encoding)
            padding = 8 - (encoding_len % 8)  # Determine number of bits needed to reach next byte
            raw_encoding_size += encoding_len
            adjusted_encoding_size += (encoding_len + padding)
    return raw_encoding_size, adjusted_encoding_size


def main():
    """
    Iterates over all huffman tables in the provided directory and calculates the size of each table in bytes"""

    if len(sys.argv) < 2:
        print("Error: please enter a directory to calculate over\n\nUsage: python huffman_table_overhead_calculator.py test_category")
        return -1

    log_directory = sys.argv[1]
    if log_directory[-1] != "/": # sanity check
        log_directory += "/"

    if log_directory in APPS:
        max_subpaths = 8
        if log_directory == "ultra/":
            max_subpaths = 6

        for i in range(4):
            intermediate = INTERMEDIATE_PATHS[i]
            if i > 1:
                for j in range(1,max_subpaths):
                    file_path = f"{log_directory}{intermediate}{j}/{FILE}"
                    raw_size, adjusted_size = compute_encoding_size(file_path)
                    print(f"{intermediate}: raw = {(raw_size/8) + (ALPHABET_SIZE)}, adjusted = {(adjusted_size/8) + (ALPHABET_SIZE)}")
            else:
                file_path = f"{log_directory}{intermediate}{FILE}"
                raw_size, adjusted_size = compute_encoding_size(file_path)
                print(f"{intermediate}: raw = {(raw_size/8) + (ALPHABET_SIZE)}, adjusted = {(adjusted_size/8) + (ALPHABET_SIZE)}")
    else:
        raw_size, adjusted_size = compute_encoding_size(f"{log_directory}{FILE}")
        print(f"{log_directory}: raw = {(raw_size/8) + (ALPHABET_SIZE)}, adjusted = {(adjusted_size/8) + (ALPHABET_SIZE)}")


if __name__ == "__main__":
    main()

