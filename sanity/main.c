#include <stdio.h>
#include <gst/gst.h>

int main(int argc, char *argv[])
{
    gst_init(NULL, NULL);

    printf("success");

    return 0;
}