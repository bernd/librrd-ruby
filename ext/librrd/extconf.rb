require 'mkmf'

dir_config("rrd")

# Try to detect the librrd version.
# Please adjust if needed and open an issue on github
# or submit a pull request. Thanks!
if have_library("rrd", "rrd_flushcached")
  src_prefix = '1.4'
elsif have_library("rrd", "rrd_create")
  src_prefix = '1.3'
else
  puts "Unsupported librrd version, abort."
  exit 1
end

create_makefile("RRD", '$(srcdir)/' + src_prefix)
