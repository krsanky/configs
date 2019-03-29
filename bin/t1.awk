BEGIN {
	print "awk print line 1\n";
}

{
	print "1[" $1 "] " $0
}
