#define _GNU_SOURCE

#include <stdio.h>
#include <dlfcn.h>
char * strcpy ( char * destination,  char * source )  {
	if(strlen(source) > strlen(destination)) {
		printf("\nstrcpy VUUULN src[%zu] dest[%zu]\n", strlen(source), strlen(destination));
	} else {
		printf("\nstrcpy OK src[%zu] dest[%zu]\n", strlen(source), strlen(destination));
	}
	char *(*old_strcpy)(char *dest, const char *src);
	old_strcpy = dlsym(RTLD_NEXT, "strcpy");
	return (*old_strcpy)(destination, source);
}
