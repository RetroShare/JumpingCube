#############################################################################
# Makefile for building: libJumpingCube.so.1.0.0
# Generated by qmake (2.01a) (Qt 4.8.4) on: Sun Dec 22 13:04:06 2013
# Project:  JumpingCube.pro
# Template: lib
# Command: /usr/bin/qmake-qt4 -o Makefile JumpingCube.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -D_REENTRANT -Wall -W -fPIC $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -D_REENTRANT -Wall -W -fPIC $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I../../libretroshare/src -I../../retroshare-gui/src -I. -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1 -shared -Wl,-soname,libJumpingCube.so.1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -ldl -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = JumpingCubePlugin.cpp \
		gui/paintwidget.cpp \
		topjcdialog.cpp \
		RSExampleItems.cpp \
		p3ExampleRS.cpp \
		msgQue.cpp \
		jumpingcubewindow.cpp qrc_JumpingCube_images.cpp \
		qrc_JumpingCube_lang.cpp \
		moc_paintwidget.cpp \
		moc_topjcdialog.cpp \
		moc_jumpingcubewindow.cpp
OBJECTS       = JumpingCubePlugin.o \
		paintwidget.o \
		topjcdialog.o \
		RSExampleItems.o \
		p3ExampleRS.o \
		msgQue.o \
		jumpingcubewindow.o \
		qrc_JumpingCube_images.o \
		qrc_JumpingCube_lang.o \
		moc_paintwidget.o \
		moc_topjcdialog.o \
		moc_jumpingcubewindow.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		../Common/retroshare_plugin.pri \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		JumpingCube.pro
QMAKE_TARGET  = JumpingCube
DESTDIR       = 
TARGET        = libJumpingCube.so.1.0.0
TARGETA       = libJumpingCube.a
TARGETD       = libJumpingCube.so.1.0.0
TARGET0       = libJumpingCube.so
TARGET1       = libJumpingCube.so.1
TARGET2       = libJumpingCube.so.1.0

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile  $(TARGET)

$(TARGET): ui_topjcdialog.h ui_jumpingcubewindow.h $(OBJECTS) $(SUBLIBS) $(OBJCOMP)  
	-$(DEL_FILE) $(TARGET) $(TARGET0) $(TARGET1) $(TARGET2)
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(LIBS) $(OBJCOMP)
	-ln -s $(TARGET) $(TARGET0)
	-ln -s $(TARGET) $(TARGET1)
	-ln -s $(TARGET) $(TARGET2)



staticlib: $(TARGETA)

$(TARGETA): ui_topjcdialog.h ui_jumpingcubewindow.h $(OBJECTS) $(OBJCOMP) 
	-$(DEL_FILE) $(TARGETA) 
	$(AR) $(TARGETA) $(OBJECTS)

Makefile: JumpingCube.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		../Common/retroshare_plugin.pri \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile JumpingCube.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_phonon.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
../Common/retroshare_plugin.pri:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile JumpingCube.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/JumpingCube1.0.0 || $(MKDIR) .tmp/JumpingCube1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/JumpingCube1.0.0/ && $(COPY_FILE) --parents JumpingCube_images.qrc lang/JumpingCube_lang.qrc .tmp/JumpingCube1.0.0/ && $(COPY_FILE) --parents topjcdialog.ui jumpingcubewindow.ui .tmp/JumpingCube1.0.0/ && $(COPY_FILE) --parents JumpingCubePlugin.h gui/paintwidget.h topjcdialog.h p3ExampleRS.h RSExampleItems.h msgQue.h jumpingcubewindow.h .tmp/JumpingCube1.0.0/ && $(COPY_FILE) --parents JumpingCubePlugin.cpp gui/paintwidget.cpp topjcdialog.cpp RSExampleItems.cpp p3ExampleRS.cpp msgQue.cpp jumpingcubewindow.cpp .tmp/JumpingCube1.0.0/ && $(COPY_FILE) --parents lang/JumpingCube_cs.ts lang/JumpingCube_da.ts lang/JumpingCube_de.ts lang/JumpingCube_el.ts lang/JumpingCube_en.ts lang/JumpingCube_es.ts lang/JumpingCube_fi.ts lang/JumpingCube_fr.ts lang/JumpingCube_hu.ts lang/JumpingCube_it.ts lang/JumpingCube_ja_JP.ts lang/JumpingCube_ko.ts lang/JumpingCube_nl.ts lang/JumpingCube_pl.ts lang/JumpingCube_ru.ts lang/JumpingCube_sv.ts lang/JumpingCube_tr.ts lang/JumpingCube_zh_CN.ts .tmp/JumpingCube1.0.0/ && (cd `dirname .tmp/JumpingCube1.0.0` && $(TAR) JumpingCube1.0.0.tar JumpingCube1.0.0 && $(COMPRESS) JumpingCube1.0.0.tar) && $(MOVE) `dirname .tmp/JumpingCube1.0.0`/JumpingCube1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/JumpingCube1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) $(TARGET0) $(TARGET1) $(TARGET2) $(TARGETA)
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_rcc_make_all: qrc_JumpingCube_images.cpp qrc_JumpingCube_lang.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_JumpingCube_images.cpp qrc_JumpingCube_lang.cpp
qrc_JumpingCube_images.cpp: JumpingCube_images.qrc \
		images/dice.png \
		images/irkick.png
	/usr/lib/x86_64-linux-gnu/qt4/bin/rcc -name JumpingCube_images JumpingCube_images.qrc -o qrc_JumpingCube_images.cpp

qrc_JumpingCube_lang.cpp: lang/JumpingCube_lang.qrc \
		lang/JumpingCube_es.qm \
		lang/JumpingCube_ko.qm \
		lang/JumpingCube_nl.qm \
		lang/JumpingCube_ja_JP.qm \
		lang/JumpingCube_el.qm \
		lang/JumpingCube_en.qm \
		lang/JumpingCube_hu.qm \
		lang/JumpingCube_ru.qm \
		lang/JumpingCube_zh_CN.qm \
		lang/JumpingCube_it.qm \
		lang/JumpingCube_cs.qm \
		lang/JumpingCube_fr.qm \
		lang/JumpingCube_pl.qm \
		lang/JumpingCube_da.qm \
		lang/JumpingCube_tr.qm \
		lang/JumpingCube_fi.qm \
		lang/JumpingCube_sv.qm \
		lang/JumpingCube_de.qm
	/usr/lib/x86_64-linux-gnu/qt4/bin/rcc -name JumpingCube_lang lang/JumpingCube_lang.qrc -o qrc_JumpingCube_lang.cpp

compiler_uic_make_all: ui_topjcdialog.h ui_jumpingcubewindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_topjcdialog.h ui_jumpingcubewindow.h
ui_topjcdialog.h: topjcdialog.ui \
		gui/paintwidget.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic topjcdialog.ui -o ui_topjcdialog.h

ui_jumpingcubewindow.h: jumpingcubewindow.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic jumpingcubewindow.ui -o ui_jumpingcubewindow.h

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_header_make_all: moc_paintwidget.cpp moc_topjcdialog.cpp moc_jumpingcubewindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_paintwidget.cpp moc_topjcdialog.cpp moc_jumpingcubewindow.cpp
moc_paintwidget.cpp: gui/paintwidget.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) gui/paintwidget.h -o moc_paintwidget.cpp

moc_topjcdialog.cpp: msgQue.h \
		RSExampleItems.h \
		jumpingcubewindow.h \
		topjcdialog.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) topjcdialog.h -o moc_topjcdialog.cpp

moc_jumpingcubewindow.cpp: jumpingcubewindow.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) jumpingcubewindow.h -o moc_jumpingcubewindow.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_rcc_clean compiler_uic_clean compiler_moc_header_clean 

####### Compile

JumpingCubePlugin.o: JumpingCubePlugin.cpp JumpingCubePlugin.h \
		topjcdialog.h \
		msgQue.h \
		RSExampleItems.h \
		jumpingcubewindow.h \
		p3ExampleRS.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o JumpingCubePlugin.o JumpingCubePlugin.cpp

paintwidget.o: gui/paintwidget.cpp gui/paintwidget.h \
		topjcdialog.h \
		msgQue.h \
		RSExampleItems.h \
		jumpingcubewindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o paintwidget.o gui/paintwidget.cpp

topjcdialog.o: topjcdialog.cpp topjcdialog.h \
		msgQue.h \
		RSExampleItems.h \
		jumpingcubewindow.h \
		ui_topjcdialog.h \
		p3ExampleRS.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o topjcdialog.o topjcdialog.cpp

RSExampleItems.o: RSExampleItems.cpp RSExampleItems.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o RSExampleItems.o RSExampleItems.cpp

p3ExampleRS.o: p3ExampleRS.cpp p3ExampleRS.h \
		RSExampleItems.h \
		msgQue.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o p3ExampleRS.o p3ExampleRS.cpp

msgQue.o: msgQue.cpp msgQue.h \
		RSExampleItems.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o msgQue.o msgQue.cpp

jumpingcubewindow.o: jumpingcubewindow.cpp jumpingcubewindow.h \
		ui_jumpingcubewindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o jumpingcubewindow.o jumpingcubewindow.cpp

qrc_JumpingCube_images.o: qrc_JumpingCube_images.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_JumpingCube_images.o qrc_JumpingCube_images.cpp

qrc_JumpingCube_lang.o: qrc_JumpingCube_lang.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_JumpingCube_lang.o qrc_JumpingCube_lang.cpp

moc_paintwidget.o: moc_paintwidget.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_paintwidget.o moc_paintwidget.cpp

moc_topjcdialog.o: moc_topjcdialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_topjcdialog.o moc_topjcdialog.cpp

moc_jumpingcubewindow.o: moc_jumpingcubewindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_jumpingcubewindow.o moc_jumpingcubewindow.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

