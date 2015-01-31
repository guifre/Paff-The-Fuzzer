#define _GNU_SOURCE

#include <stdio.h>
#include <dlfcn.h>
char *strcat(char *dest, const char *src) {
	if (strlen(src) > strlen(dest)) {
		printf("Found bug in [strcat] call. Source [%zu] Destination [%zu]\n", strlen(src), strlen(dest));
	} else {
		// printf("strcat OK src[%zu] dest[%zu]\n", strlen(src), strlen(dest));
	}
	char *(*old_strcat)(char *dest, const char *src);
	old_strcat = dlsym(RTLD_NEXT, "strcat");
	return (*old_strcat)(dest, src);
}
