CC=gcc
LIB_FLAGS=  -fPIC -shared -o
RM = rm

 all: libs test

.PHONY: all test

  libs:
	$(CC) $(LIB_FLAGS) lib/strcpy.so src/libs/strcpy.c -ldl
	$(CC) $(LIB_FLAGS) lib/strcat.so src/libs/strcat.c -ldl

  test:
	$(CC) test/strcatVuln.c -o test/bin/strcatVuln
	$(CC) test/strcpyVuln.c -o test/bin/strcpyVuln

   clean:
	$(RM) lib/*
	$(RM) test/bin/*
