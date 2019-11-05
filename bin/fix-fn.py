#!/usr/bin/env python2

import os
import re
import sys
import getopt

class Usage(Exception):
    def __init__(self, msg):
        self.msg = msg

re1 = re.compile(r'[^a-zA-Z0-9_.-]') #'-' needs to be past to not be a span
re2 = re.compile('-{2,}')
def good_filename(filename):
    newfn = re1.sub('-', filename)
    newfn = re2.sub('-', newfn)
    return newfn

def main(argv=None):
    if argv is None:
        argv = sys.argv
    try:
        try:
            opts, args = getopt.getopt(argv[1:], "h", ["help"])
        except getopt.error, msg:
             raise Usage(msg)

        #print "opts:" + str(opts)
        #print "args:" + str(args)
        for f in args:
            #print "dirname:" + str(os.path.dirname(f))
            #print "basename:" + str(os.path.basename(f))

            f = os.path.abspath(f) #use full paths for all the files

            if os.path.isfile(f):
                (dir_, file_) = os.path.split(f)
                newf = dir_ + '/' + good_filename(file_)
                os.rename(f, newf)  
            else:
                print f + ": is not a file"

    except Usage, err:
        print >>sys.stderr, err.msg
        print >>sys.stderr, "for help use --help"
        return 2

if __name__ == "__main__":
    sys.exit(main())


