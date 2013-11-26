#include <stdio.h>
#include <stdlib.h>
 
enum { BUFFER_SIZE = 10 };
 
int main(int argc, char **argv) {
	char buffer[BUFFER_SIZE];
	int check = 0;
	strcat(buffer, argv[1]);
	printf("written %s\n", buffer);
	return EXIT_SUCCESS;
}
