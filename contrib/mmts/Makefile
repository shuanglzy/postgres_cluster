MODULE_big = multimaster
OBJS = multimaster.o arbiter.o bytebuf.o bgwpool.o pglogical_output.o pglogical_proto.o pglogical_receiver.o pglogical_apply.o pglogical_hooks.o pglogical_config.o

EXTENSION = multimaster
DATA = multimaster--1.0.sql

.PHONY: all

all: multimaster.o multimaster.so

PG_CPPFLAGS = -I$(libpq_srcdir) -DUSE_PGLOGICAL_OUTPUT
SHLIB_LINK = $(libpq)

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/multimaster
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif

