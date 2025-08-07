QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

QMAKE_CFLAGS += -std=gnu99 -O0 -D_ERROR_PRINT

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    h264bsd_byte_stream.c \
    h264bsd_cavlc.c \
    h264bsd_conceal.c \
    h264bsd_deblocking.c \
    h264bsd_decoder.c \
    h264bsd_dpb.c \
    h264bsd_image.c \
    h264bsd_inter_prediction.c \
    h264bsd_intra_prediction.c \
    h264bsd_macroblock_layer.c \
    h264bsd_main.c \
    h264bsd_nal_unit.c \
    h264bsd_neighbour.c \
    h264bsd_pic_order_cnt.c \
    h264bsd_pic_param_set.c \
    h264bsd_reconstruct.c \
    h264bsd_sei.c \
    h264bsd_seq_param_set.c \
    h264bsd_slice_data.c \
    h264bsd_slice_group_map.c \
    h264bsd_slice_header.c \
    h264bsd_storage.c \
    h264bsd_stream.c \
    h264bsd_transform.c \
    h264bsd_util.c \
    h264bsd_vlc.c \
    h264bsd_vui.c \
    main.cpp \
    widget.cpp

HEADERS += \
    basetype.h \
    h264bsd_byte_stream.h \
    h264bsd_cavlc.h \
    h264bsd_cfg.h \
    h264bsd_conceal.h \
    h264bsd_container.h \
    h264bsd_deblocking.h \
    h264bsd_decoder.h \
    h264bsd_dpb.h \
    h264bsd_image.h \
    h264bsd_inter_prediction.h \
    h264bsd_intra_prediction.h \
    h264bsd_macroblock_layer.h \
    h264bsd_nal_unit.h \
    h264bsd_neighbour.h \
    h264bsd_pic_order_cnt.h \
    h264bsd_pic_param_set.h \
    h264bsd_reconstruct.h \
    h264bsd_sei.h \
    h264bsd_seq_param_set.h \
    h264bsd_slice_data.h \
    h264bsd_slice_group_map.h \
    h264bsd_slice_header.h \
    h264bsd_storage.h \
    h264bsd_stream.h \
    h264bsd_transform.h \
    h264bsd_util.h \
    h264bsd_vlc.h \
    h264bsd_vui.h \
    widget.h

FORMS += \
    widget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    h264bsd.pro.user
