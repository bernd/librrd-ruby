ChangeLog
=========

# 1.0.3
* Update 1.4.x binding to rrdtool-1.4.7.

# 1.0.2
* Backport rev 2206 from svn to fix a problem with RRD.xport.

# 1.0.1
* Mac OS X changes to build with rrdtool from Homebrew. (aia)
* Unbreak test setup for ruby 1.9.2.
* Force a cleanup before running the tests to avoid errors
  with incompatible ruby versions.

# 1.0.0
* Moved test.rb to test/unit tests.
* Update development instructions. (auxesis)
* Alias RRD to LibRRD Ruby users aren't confused about gem/library
  naming conventions. (auxesis)

# 0.2.0
* Add RRDtool 1.2 bindings.
* Fix build on OpenBSD.

# 0.1.2
* Fix compilation on 1.9.2 by backporting a fix from the RRDtool svn. (r2132)

# 0.1.1
* Remove wrong dependency from gemspec.

# 0.1.0
* Initial release.
