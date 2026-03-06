#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#define PAGE_SIZE 4096

int main(int argc, char **argv) {
    if (argc != 3) {
        fprintf(stderr, "Usage: %s <src_file> <dst_file>\n", argv[0]);
        return EXIT_FAILURE;
    }

    char *src = argv[1], *dst = argv[2];
    int f_src = open(src, O_RDONLY | O_CREAT, 0644);
    int f_dst = open(dst, O_WRONLY | O_CREAT, 0644);
    if (f_dst == -1 || f_src == -1) {
        perror("open:");
        return EXIT_FAILURE;
    }

    ssize_t read_bytes = 0;
    int code = 0;
    char buf[PAGE_SIZE + 1] = {};
    while((read_bytes = read(f_src, buf, PAGE_SIZE))) {
        if (read_bytes == -1) {
            perror("read: ");
            code = 1;
            goto clean;
        }

        if(write(f_dst, buf, read_bytes) == -1) {
            perror("write: ");
            code = 1;
            goto clean;
        }

        memset(buf, 0, sizeof(buf));
    }

clean:
    close(f_dst);
    close(f_src);
    return code;
}
