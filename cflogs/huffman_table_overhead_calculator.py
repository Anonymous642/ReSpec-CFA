import sys

ALPHABET_SIZE = 256
FILE = "huffman_decoding.txt"
INTERMEDIATE_PATHS = ["huffman/", "combos/prefix_huff/", "combos/spec_huff/1/", "combos/spec_huff/2/", 
                      "combos/spec_huff/3/", "combos/spec_huff/4/", "combos/spec_huff/5/", "combos/spec_huff/6/", 
                      "combos/spec_huff/7/", "combos/spec_huff/8/", "combos/all/1/", "combos/all/2/", "combos/all/3/", 
                      "combos/all/4/", "combos/all/5/", "combos/all/6/", "combos/all/7/", "combos/all/8/"]


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

    for intermediate in INTERMEDIATE_PATHS:
        file_path = f"{log_directory}{intermediate}{FILE}"
        raw_size, adjusted_size = compute_encoding_size(file_path)
        print(f"{intermediate}: raw = {(raw_size/8) + (ALPHABET_SIZE)}, adjusted = {(adjusted_size/8) + (ALPHABET_SIZE)}")


if __name__ == "__main__":
    main()

