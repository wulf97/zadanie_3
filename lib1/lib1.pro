include(../config.pri)

QT += widgets
QT -= gui

TARGET = lib1
TEMPLATE = lib

DEFINES += LIB1_LIBRARY

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    equwidget.cpp \
    valwidget.cpp

HEADERS += \
    equwidget.h \
    valwidget.h

FORMS += \
    equwidget.ui \
    valwidget.ui

message("Build lib1")
