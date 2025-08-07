// #include "widget.h"
// #include <QApplication>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
extern "C" {
int h264bsd_main(int argc, char *argv[]);
}

int main(int argc, char *argv[])
{
    // QApplication a(argc, argv);
    // Widget w;
    // w.show();
    // return a.exec();
    char* h264main_argv[] = {
        const_cast<char*>("h264bsd"),
        const_cast<char*>("-o"),
        const_cast<char*>("output.yuv"),
        const_cast<char*>("C:\\Users\\13994\\Desktop\\work\\qt\\study\\h264bsd\\test_640x360.h264"),
        nullptr
    };

    // 构造 argc: argv 长度减1（排除 nullptr）
    int h264main_argc = sizeof(h264main_argv) / sizeof(h264main_argv[0]) - 1;  // 或手动设置 argc = 3;
    return h264bsd_main(h264main_argc, h264main_argv);
}
