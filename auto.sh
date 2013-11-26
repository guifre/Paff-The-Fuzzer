#!/bin/bash
foo=a;
for file in `ls test/bin`; do
	echo "Fuzzing [${file}]";
	for i in {0..10}; do
		LD_PRELOAD="./lib/strcpy.so ./lib/strcat.so"  ./test/bin/$file $foo;
		foo="${foo}a";
	done;
	echo "";
done;
