#!/usr/bin/env python3.6

import os
import re
import sys
import getopt

re1 = re.compile(r'[^a-zA-Z0-9_.-]') #'-' needs to be past to not be a span
re2 = re.compile('-{2,}')
def good_filename(filename):
    newfn = re1.sub('-', filename)
    newfn = re2.sub('-', newfn)
    return newfn

def main(argv=None):
	"""
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
	"""
	pass

def fix_file(fn):
	#print("dirname:" + str(os.path.dirname(fn)))
	#print("basename:" + str(os.path.basename(fn)))
	print("fix:%s good:%s" % (fn, good_filename(fn)))

	f = os.path.abspath(fn) #use full paths for all the files

	if os.path.isfile(f):
		(dir_, file_) = os.path.split(f)
		newf = dir_ + '/' + good_filename(file_)
		os.rename(f, newf)  
	else:
		print(f + ": is not a file")

if __name__ == "__main__":
	# arg[0] is program-name
	for a in sys.argv[1:]:
		fix_file(a)



