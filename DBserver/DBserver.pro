QT += core network
QT -= gui

CONFIG += c++11

TARGET = DBserver
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    configuration.cpp \
    sserver.cpp \
    dbserver.cpp \
    ../communication/cipheradapter.cpp \
    ../communication/rsaencrypter.cpp \
    ../communication/tcpserver.cpp \
    frametype.cpp

DISTFILES += \
    settings.ini
LIBS += -lcrypto -ldl -lssl

HEADERS += \
    configuration.h \
    frametype.h \
    sserver.h \
    srvtype.h \
    dbserver.h \
    ../communication/cipheradapter.h \
    ../communication/rsaencrypter.h \
    ../communication/tcpserver.h
