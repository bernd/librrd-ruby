require 'mkmf'

case RUBY_PLATFORM
when /openbsd/i
  puts "Using OpenBSD hacks"
  $LDFLAGS += ' -L/usr/X11R6/lib'
  find_library('z', nil)
  find_library('freetype', nil)
when /darwin/i
  puts "Mac OS X"
  $INCFLAGS += ' -I/usr/local/include'
end

dir_config("rrd")

$CFLAGS += " -Wno-error=format-security"

# Try to detect the librrd version.
# Please adjust if needed and open an issue on github
# or submit a pull request. Thanks!
if have_library("rrd", "rrd_flushcached")
  src_prefix = '1.4'
elsif have_type("rrd_info_t", "rrd.h") and have_library("rrd", "rrd_create")
  src_prefix = '1.3'
elsif have_library("rrd", "rrd_create")
  src_prefix = '1.2'
else
  puts "Unsupported librrd version, abort."
  exit 1
end

create_makefile("RRD", '$(srcdir)/' + src_prefix)
