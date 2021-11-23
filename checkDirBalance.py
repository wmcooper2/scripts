"""Check that the first dir tree exist in the same location as the second dir tree.
    
    Usage:
        python3 checkDirBalance.py <dir1> <dir2> <rootDirName>

    Notes:
        - Specify the rootDirName to basically anchor the program's search common_dir there.
"""

from pathlib import Path
import sys
import re


DEBUG = False
count = 0
limit = 40


rel_dir1 = sys.argv[1]
rel_dir2 = sys.argv[2]
abs_dir1 = Path(rel_dir1).resolve()
abs_dir2 = Path(rel_dir2).resolve()
common_dir = sys.argv[3]
assert len(sys.argv) == 4

if DEBUG:
    print("rel dir1: ", rel_dir1)
    print("rel dir2: ", rel_dir2)
    print("abs dir1: ", abs_dir1)
    print("abs dir2: ", abs_dir2)
    print()

for f in Path(rel_dir1).glob("**/*"):
    source_file = f.resolve()
    if DEBUG:
        print("resolved path1:", source_file)

    #find the common dir for the syncing process
    common_dir_match = re.search(common_dir, str(source_file))
    if DEBUG:
#         print("common dir match:", common_dir_match)
        print("match index start:", common_dir_match.start())
        print("match index end:", common_dir_match.end())

    #break off the path after the common dir
    source_path = str(source_file)[common_dir_match.end(0)+1:]
    if DEBUG:
        print("source path:", source_path)

    target = f"{str(abs_dir2)}/{str(source_path)}"
#     print("target:", target)
#     print()


    if not Path(target).exists():
        print("Copying:", source_file, target)
        #copy using shutil
        
    

    



    #prefix the file with the destination dir's path
#     dest_file = common_dir_match.start(1)
#     if DEBUG:
#         print("dest file:", dest_file)
#         print()

#     target = rel_dir2+dir1_end

    count += 1
    if count > limit and DEBUG:
        break
