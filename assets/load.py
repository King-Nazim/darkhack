#!/bin/python
import time, sys, os
import time
import sys, os
import getopt
md5_hash = None
pwdfile = None
argv = sys.argv[1:]
try:
    opts, args = getopt.getopt(argv, "H:P:")
except:
    print("Error")
for opt, arg in opts:
    counter = 1
    if opt in ['-H']:
        md5_hash = arg
    elif opt in ['-P']:
        pwdfile = arg


def loader():
    animation = ["\033[32m"+(md5_hash)+" \033[35m•\033[32m...\033[0m", "\033[32m"+(md5_hash)+".\033[35m•\033[32m..\033[0m", "\033[32m"+(md5_hash)+"..\033[34m•\033[32m.\033[0m", "\033[32m"+(md5_hash)+"...\033[34m•\033[0m"]
    for i in range(len(animation)):
        time.sleep(0.2)
        sys.stdout.write("\r" + animation[i % len(animation)])
        sys.stdout.flush()

    for i in range(len(animation)):
        time.sleep(0.2)
        sys.stdout.write("\r" + animation[i % len(animation)])
        sys.stdout.flush()
    animation = ["\033[32m"+(md5_hash)+" \033[35m•\033[32m...\033[0m", "\033[32m"+(md5_hash)+".\033[35m•\033[32m..\033[0m", "\033[32m"+(md5_hash)+"..\033[34m•\033[32m.\033[0m", "\033[32m"+(md5_hash)+"...\033[34m•\033[0m", "\033[1;32mDone :)                 \033[0m"]
    for i in range(len(animation)):
        time.sleep(0.2)
        sys.stdout.write("\r" + animation[i % len(animation)])
        sys.stdout.flush()
    print("\n")
loader()
