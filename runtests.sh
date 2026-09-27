#!/bin/sh

for i in tests/*.lop; do
	f=$(dirname $i)/$(basename $i .lop)
	python3 main.py gen-verilog test $f.lop | cmp $f.v -
	iverilog $f.v tests/ext.v
done
