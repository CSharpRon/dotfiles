#!/usr/bin/python3

import os

'''
' The flow of this script is simple:
' 1: Identify which config files need to be installed
' 2: Backup the original versions of these files in the user's directory (if they exist)
' 3: Delete the original versions
' 4: Perform a symlink
'
' The files can be of any arbitrary name but items in the .config folder are handled explicitly since
' user profiles often have other files in this folder that are system specific and outside of the
' scope and purpose of this repoBT98qD9#m&4u9C
'''
def main():

    homepath = './home/'
    homedir = '$HOME'
    os.system("mkdir backup 2>/dev/null")
    os.system("mkdir backup/.config 2>/dev/null")

    # Backup everything that is not in config and then delete it
    for f in os.listdir(homepath):
        if f != ".config" and f != "" and f != "*":

            # Try to unlink the files first (useful if this command is run multiple times)
            os.system("unlink %s/%s 2>/dev/null" % (homedir, f))

            # Backup the files
            os.system("cp %s/%s ./backup/%s -r 2>/dev/null" % (homedir, f, f))

            # Delete the files
            os.system("rm -rf %s/%s 2>/dev/null" % (homedir, f))

            # Do the sym link
            os.system("ln -s $(pwd)/home/%s %s/%s" % (f, homedir, f))

    # Repeat the process for everything in .config
    for c in os.listdir(os.path.join(homepath, '.config/')):
        if c != "" and c != "*":
            # Try to unlink the files first (useful if this command is run multiple times)
            os.system("unlink %s/.config/%s 2>/dev/null" % (homedir, c))

            # Backup the configs
            os.system("cp ~/.config/%s ./backup/.config/%s -r 2>/dev/null" % (c, c))

            # Delete the files
            os.system("rm -rf %s/.config/%s " % (homedir, c))

            # Do the sym link
            os.system("ln -s $(pwd)/home/.config/%s %s/.config/%s" % (c, homedir, c))

main()
