#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, char **argv) {
    int fd = open("lab31", O_RDONLY);
    if (fd == -1) {
        perror("open:");
        return EXIT_FAILURE;
    }
    printf("fd %d succesfully opened\n", fd);

    const int hour = 3600;
    sleep(hour);
    close(fd);
}
