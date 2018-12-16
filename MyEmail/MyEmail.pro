#-------------------------------------------------
#
# Project created by QtCreator 2018-03-01T22:19:02
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MyEmail
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    ../SmtpClient-for-Qt/src/emailaddress.cpp \
    ../SmtpClient-for-Qt/src/mimeattachment.cpp \
    ../SmtpClient-for-Qt/src/mimecontentformatter.cpp \
    ../SmtpClient-for-Qt/src/mimefile.cpp \
    ../SmtpClient-for-Qt/src/mimehtml.cpp \
    ../SmtpClient-for-Qt/src/mimeinlinefile.cpp \
    ../SmtpClient-for-Qt/src/mimemessage.cpp \
    ../SmtpClient-for-Qt/src/mimemultipart.cpp \
    ../SmtpClient-for-Qt/src/mimepart.cpp \
    ../SmtpClient-for-Qt/src/mimetext.cpp \
    ../SmtpClient-for-Qt/src/quotedprintable.cpp \
    ../SmtpClient-for-Qt/src/smtpclient.cpp

HEADERS += \
        mainwindow.h \
    ../SmtpClient-for-Qt/src/emailaddress.h \
    ../SmtpClient-for-Qt/src/mimeattachment.h \
    ../SmtpClient-for-Qt/src/mimecontentformatter.h \
    ../SmtpClient-for-Qt/src/mimefile.h \
    ../SmtpClient-for-Qt/src/mimehtml.h \
    ../SmtpClient-for-Qt/src/mimeinlinefile.h \
    ../SmtpClient-for-Qt/src/mimemessage.h \
    ../SmtpClient-for-Qt/src/mimemultipart.h \
    ../SmtpClient-for-Qt/src/mimepart.h \
    ../SmtpClient-for-Qt/src/mimetext.h \
    ../SmtpClient-for-Qt/src/quotedprintable.h \
    ../SmtpClient-for-Qt/src/smtpclient.h \
    ../SmtpClient-for-Qt/src/smtpexports.h \
    ../SmtpClient-for-Qt/src/SmtpMime

FORMS += \
        mainwindow.ui
