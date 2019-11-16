#!/usr/bin/python3

import os

def main():

    # Make sure there is a home folder in the current directory

    # Go into the home directory

    # Action A: For each file present: 
    #   1 - Back it up if it exists to PROJECT_ROOT/backup
    #   2 - Create a symlink

    # Action B: For each folder present:
    #   1 - Back it up if it exists to PROJECT_ROOT/backup
    #   2 - Make the folder if it does not already exists
    #   3 - Repeat action A
    #   4 - Repeat action B
    homepath = './home/'
    for i in os.listdir(homepath):
        os.system("cp ~/%s ./backup/%s -r" % (i, i))
#        path = os.path.join(homepath, i)
#        if(os.path.isdir(path)):
#            print(i, 'is a directory')
#        else:
#            print(i, 'is a file')

main()

    #os.listdir()
