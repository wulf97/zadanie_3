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
            $${DESTDIR}/liblib1.a \
            $${DESTDIR}/liblib2.a
    }

    win32-msvc*{
        LIBS += \
            $${DESTDIR}/lib1.lib \
            $${DESTDIR}/lib2.lib
    }
}

message("Build manager")
