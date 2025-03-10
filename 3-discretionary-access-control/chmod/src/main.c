#include <stdio.h>
#include <errno.h>
#include <stdlib.h>

#include <sys/stat.h>


int main(int argc, char **argv)
{
    
    if(argc != 3) {
        fprintf(stderr, "Usage %s <mode> <pathname>\n", argv[0]);
        return EXIT_FAILURE;
    }

    char *str_end = NULL;
    unsigned long mode = strtoul(argv[1], &str_end, 8);
    if(mode == 00 || mode > 07777 || *str_end != '\0') {
        fprintf(stderr, "Invalid mode\n");
        return EXIT_FAILURE;
    }

    if(chmod(argv[2], mode) == -1) {
        perror("chmod");
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS; 
}
