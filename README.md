Paff the Fuzzer
==============
Paff the Fuzzer is a PoC binaries fuzzer that users dynamic library linking to instrument the targeted files.

Usage
------
$ make; ./bash runUnitTests.sh 

Example
------
       guifre@debian:~/Paff-The-Fuzzer$ bash runUnitTests.sh 
       Fuzzing [strcatVuln]
       written ���U1214
       written �HF�12149
       written @�>y121492
       Found bug in [strcat] call. Source [7] Destination [6]
       written ���s1214921

       Fuzzing [strcpyVuln]

       buff is 12149211
       buff is 121492112
       Found bug in [strcpy] call.  Source [7] Destination [6]
       buff is 1214921122


Requirements
------
Only tested in GNU/Linux.
To compile as lib: $gcc -Wall -fPIC -shared -o myfopen.so myfopen.c -ldl

