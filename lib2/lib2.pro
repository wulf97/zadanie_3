include(../config.pri)

QT += widgets
QT -= gui

TARGET = lib2
TEMPLATE = lib

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    numbottomwidget.cpp \
    numtopwidget.cpp \
    operationswidget.cpp

HEADERS += \
    numbottomwidget.h \
    numtopwidget.h \
    operationswidget.h

FORMS += \
    numbottomwidget.ui \
    numtopwidget.ui \
    operationswidget.ui

message("Build lib2")
