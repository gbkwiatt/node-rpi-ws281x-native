# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := rpi_libws2811
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=rpi_libws2811' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wno-unused-parameter \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Debug := \
	-I/home/pi/.cache/node-gyp/14.15.3/include/node \
	-I/home/pi/.cache/node-gyp/14.15.3/src \
	-I/home/pi/.cache/node-gyp/14.15.3/deps/openssl/config \
	-I/home/pi/.cache/node-gyp/14.15.3/deps/openssl/openssl/include \
	-I/home/pi/.cache/node-gyp/14.15.3/deps/uv/include \
	-I/home/pi/.cache/node-gyp/14.15.3/deps/zlib \
	-I/home/pi/.cache/node-gyp/14.15.3/deps/v8/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=rpi_libws2811' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wno-unused-parameter \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Release := \
	-I/home/pi/.cache/node-gyp/14.15.3/include/node \
	-I/home/pi/.cache/node-gyp/14.15.3/src \
	-I/home/pi/.cache/node-gyp/14.15.3/deps/openssl/config \
	-I/home/pi/.cache/node-gyp/14.15.3/deps/openssl/openssl/include \
	-I/home/pi/.cache/node-gyp/14.15.3/deps/uv/include \
	-I/home/pi/.cache/node-gyp/14.15.3/deps/zlib \
	-I/home/pi/.cache/node-gyp/14.15.3/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/src/rpi_ws281x/dma.o \
	$(obj).target/$(TARGET)/src/rpi_ws281x/mailbox.o \
	$(obj).target/$(TARGET)/src/rpi_ws281x/pcm.o \
	$(obj).target/$(TARGET)/src/rpi_ws281x/pwm.o \
	$(obj).target/$(TARGET)/src/rpi_ws281x/rpihw.o \
	$(obj).target/$(TARGET)/src/rpi_ws281x/ws2811.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/rpi_ws281x-version.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic

LDFLAGS_Release := \
	-pthread \
	-rdynamic

LIBS :=

$(obj).target/rpi_libws2811.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/rpi_libws2811.a: LIBS := $(LIBS)
$(obj).target/rpi_libws2811.a: TOOLSET := $(TOOLSET)
$(obj).target/rpi_libws2811.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/rpi_libws2811.a
# Add target alias
.PHONY: rpi_libws2811
rpi_libws2811: $(obj).target/rpi_libws2811.a

# Add target alias to "all" target.
.PHONY: all
all: rpi_libws2811

# Add target alias
.PHONY: rpi_libws2811
rpi_libws2811: $(builddir)/rpi_libws2811.a

# Copy this to the static library output path.
$(builddir)/rpi_libws2811.a: TOOLSET := $(TOOLSET)
$(builddir)/rpi_libws2811.a: $(obj).target/rpi_libws2811.a FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/rpi_libws2811.a
# Short alias for building this static library.
.PHONY: rpi_libws2811.a
rpi_libws2811.a: $(obj).target/rpi_libws2811.a $(builddir)/rpi_libws2811.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/rpi_libws2811.a

