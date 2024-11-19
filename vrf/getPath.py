import sys

print(sys.path)
print("")

path_str = "$PYTHONPATH"
for p in sys.path:
	path_str += ":"+p

print(path_str)