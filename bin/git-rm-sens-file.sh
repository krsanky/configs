#!/bin/sh

#git filter-branch --force --index-filter \
#  "git rm --cached --ignore-unmatch PATH-TO-YOUR-FILE-WITH-SENSITIVE-DATA" \
#  --prune-empty --tag-name-filter cat -- --all

if [ $# -lt 1 ] ; then
	echo "$0 <file-to-remove-all-traces-of>"
	exit 1
fi

f=$1

git filter-branch --force --index-filter \
	"git rm --cached --ignore-unmatch ${1}" \
	--prune-empty --tag-name-filter cat -- --all

