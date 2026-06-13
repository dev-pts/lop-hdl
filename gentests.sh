#!/bin/sh

for i in tests/*.lop; do
	f=$(dirname $i)/$(basename $i .lop)
	python3 main.py test $f.lop > $f.v || exit
done
