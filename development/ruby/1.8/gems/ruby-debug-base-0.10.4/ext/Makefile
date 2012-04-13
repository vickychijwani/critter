
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /home/vicky/.rvm/rubies/ree-1.8.7-2012.02/lib/ruby/1.8/i686-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/home/vicky/.rvm/rubies/ree-1.8.7-2012.02
exec_prefix = $(prefix)
libexecdir = $(exec_prefix)/libexec
rubylibdir = $(libdir)/ruby/$(ruby_version)
dvidir = $(docdir)
sitedir = $(libdir)/ruby/site_ruby
pdfdir = $(docdir)
datarootdir = $(prefix)/share
sbindir = $(exec_prefix)/sbin
datadir = $(datarootdir)
sitelibdir = $(sitedir)/$(ruby_version)
mandir = $(datarootdir)/man
includedir = $(prefix)/include
archdir = $(rubylibdir)/$(arch)
vendorlibdir = $(vendordir)/$(ruby_version)
psdir = $(docdir)
htmldir = $(docdir)
localedir = $(datarootdir)/locale
oldincludedir = $(DESTDIR)/usr/include
bindir = $(exec_prefix)/bin
sysconfdir = $(prefix)/etc
localstatedir = $(prefix)/var
vendordir = $(libdir)/ruby/vendor_ruby
vendorarchdir = $(vendorlibdir)/$(sitearch)
infodir = $(datarootdir)/info
sitearchdir = $(sitelibdir)/$(sitearch)
libdir = $(exec_prefix)/lib
docdir = $(datarootdir)/doc/$(PACKAGE)
sharedstatedir = $(prefix)/com

CC = colorgcc
LIBRUBY = $(LIBRUBY_A)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) 
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -g -O2  $(cflags) 
INCFLAGS = $(PREINCFLAGS) -I. -I/opt/local/include -I$(topdir) -I$(hdrdir) -I$(srcdir)
DEFS     = -D_FILE_OFFSET_BITS=64
CPPFLAGS =   $(DEFS) $(cppflags)
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

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir) -Wl,-R$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS =   -L/opt/local/lib -lrt -ldl -lcrypt -lm   -lc
SRCS = breakpoint.c ruby_debug.c
OBJS = breakpoint.o ruby_debug.o
TARGET = ruby_debug
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /mnt/home/vicky/Documents/Ruby/critter/development/ruby/1.8/gems/ruby-debug-base-0.10.4/lib$(target_prefix)
RUBYARCHDIR = /mnt/home/vicky/Documents/Ruby/critter/development/ruby/1.8/gems/ruby-debug-base-0.10.4/lib$(target_prefix)

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
