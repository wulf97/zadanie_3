include(../config.pri)

QT += widgets
QT -= gui

TARGET = manager
TEMPLATE = lib

DEFINES += MANAGER_LIBRARY

DEFINES += QT_DEPRECATED_WARNINGS

INCLUDEPATH += \
    "../lib1/" \
    "../lib2/"

SOURCES += \
    manager.cpp \
    manager.cpp \
    calc.cpp

HEADERS += \
    manager.h \
    manager.h \
    calc.h

unix {
    LIBS += -llib1 -llib2
}

win32 {
    win32-g++{
        LIBS += \
            liblib1.a \
            liblib2.a
    }

    win32-msvc*{
        LIBS += \
            lib1.lib \
            lib2.lib
    }
}

message("Build manager")
