
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /home/vicky/.rvm/rubies/ree-1.8.7-2012.02/lib/ruby/1.8/i686-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
exec_prefix = $(prefix)
prefix = $(DESTDIR)/home/vicky/.rvm/rubies/ree-1.8.7-2012.02
oldincludedir = $(DESTDIR)/usr/include
rubylibdir = $(libdir)/ruby/$(ruby_version)
includedir = $(prefix)/include
datadir = $(datarootdir)
localedir = $(datarootdir)/locale
sitearchdir = $(sitelibdir)/$(sitearch)
sysconfdir = $(prefix)/etc
localstatedir = $(prefix)/var
pdfdir = $(docdir)
vendorlibdir = $(vendordir)/$(ruby_version)
libexecdir = $(exec_prefix)/libexec
sitedir = $(libdir)/ruby/site_ruby
libdir = $(exec_prefix)/lib
psdir = $(docdir)
vendorarchdir = $(vendorlibdir)/$(sitearch)
infodir = $(datarootdir)/info
datarootdir = $(prefix)/share
sbindir = $(exec_prefix)/sbin
dvidir = $(docdir)
sitelibdir = $(sitedir)/$(ruby_version)
sharedstatedir = $(prefix)/com
mandir = $(datarootdir)/man
vendordir = $(libdir)/ruby/vendor_ruby
archdir = $(rubylibdir)/$(arch)
docdir = $(datarootdir)/doc/$(PACKAGE)
bindir = $(exec_prefix)/bin
htmldir = $(docdir)

CC = colorgcc
LIBRUBY = $(LIBRUBY_A)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) 
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -g -O2  $(cflags) -Wall  
INCFLAGS = $(PREINCFLAGS) -I. -I/opt/local/include -I. -I/home/vicky/.rvm/rubies/ree-1.8.7-2012.02/lib/ruby/1.8/i686-linux -I.
DEFS     = -D_FILE_OFFSET_BITS=64
CPPFLAGS = -DHAVE_SQLITE3_H -DHAVE_LOCALTIME_R -DHAVE_GMTIME_R -DHAVE_SQLITE3_PREPARE_V2 -DHAVE_SQLITE3_OPEN_V2 -I/usr/local/include -I/opt/local/include -I/usr/include  -D_FILE_OFFSET_BITS=64 
CXXFLAGS = $(CFLAGS) 
ldflags  = -L.  -rdynamic -Wl,-export-dynamic
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CC) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-linux
sitearch = i686-linux
ruby_version = 1.8
ruby = /home/vicky/.rvm/rubies/ree-1.8.7-2012.02/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir) /usr/local/lib /opt/local/lib /usr/lib
LIBPATH =  -L. -L$(libdir) -Wl,-R$(libdir) -L/usr/local/lib -Wl,-R/usr/local/lib -L/opt/local/lib -Wl,-R/opt/local/lib -L/usr/lib -Wl,-R/usr/lib
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = /do_sqlite3
LOCAL_LIBS = 
LIBS =  -lsqlite3  -L/opt/local/lib -lrt -ldl -lcrypt -lm   -lc
SRCS = do_sqlite3_extension.c do_common.c do_sqlite3.c
OBJS = do_sqlite3_extension.o do_common.o do_sqlite3.o
TARGET = do_sqlite3
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /mnt/home/vicky/Documents/Ruby/critter/development/ruby/1.8/gems/do_sqlite3-0.10.6/lib$(target_prefix)
RUBYARCHDIR = /mnt/home/vicky/Documents/Ruby/critter/development/ruby/1.8/gems/do_sqlite3-0.10.6/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
