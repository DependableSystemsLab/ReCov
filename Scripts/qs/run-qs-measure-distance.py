#! /usr/bin/python

import os, sys

bmName = sys.argv[1]

os.system("opt -load ~/llvm-2.9-build/lib/CountQsDistance.so -S -bishe_insert ../" +bmName+ "-llfi_index.ll -o qs-unlinked.ll -select_set_file='../loop/qsIndex.txt'")
os.system("llvm-link qs-unlinked.ll qs_distance_count.ll -o "+bmName+"-qs.ll" )
