include(../config.pri)

QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = main
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

INCLUDEPATH += \
    "../manager" \
    "../lib1/" \
    "../lib2/"

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

unix {
    LIBS += -lmanager -llib1 -llib2
}

message("Build main")
