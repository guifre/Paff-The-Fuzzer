#!/bin/bash
foo=${RANDOM:0:1};
for i in {0..2}; do
	foo="${foo}${RANDOM:0:1}";
done;
for file in `ls test/bin`; do
	echo "Fuzzing [${file}]";
	for i in {0..3}; do
		LD_PRELOAD="./lib/strcpy.so ./lib/strcat.so" ./test/bin/$file $foo;
		foo="${foo}${RANDOM:0:1}";
	done;
	echo "";
done;
