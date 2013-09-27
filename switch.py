#!/usr/bin/env python

import sys
import subprocess
import os

def path_to(x):
    root = os.path.dirname(__file__)
    return os.path.join(root,'applescript',x)

# Get direction key from args (h,j,k,l)
key = sys.argv[1]

# Query iTerm2 for the name of the active session
name = subprocess.check_output(['osascript',path_to('iterm2_getname.scpt')])
if '(vim)' in name:
    # Send keystrokes directly to the vim plugin
    sys.stdout.write(chr(27))
    sys.stdout.write(':call SwitchWindow("%s")'%key)
    sys.stdout.write(chr(13))
else:
    subprocess.call(['osascript',path_to('iterm2_%s.scpt'%key)])
