"""Find any image files in the current directory tree.

    Usage: 
        python3 findImages.py <your_dir> <output_list>
"""

from pathlib import Path
import sys

input_dir = sys.argv[1]
output_file = sys.argv[2]
assert len(sys.argv) == 2

with open(output_file, "w+") as save_to:
    for file_ in Path(input_dir).glob("**/*"):
        if file_.suffix in [".jpg", ".jpeg", ".png", ".tiff", ".tif", ".raw", ".bmp", ".xcf", ".psd", ".gif", ".eps"]:
            print(file_)

