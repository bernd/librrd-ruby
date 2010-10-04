librrd
======

# Description

This gem includes the [rrdtool](http://www.mrtg.org/rrdtool/) Ruby bindings.
It got created because it's difficult to get the rrdtool bindings if you don't
use the Ruby distribution included in your package system.

The `extconf.rb` tries to guess the librrd version installed on your system.
If it doesn't work, please try to adjust the `ext/librrd/extconf.rb` file
and submit a pull request or open an issue.

The following systems have been tested.

* Ubuntu 10.04 LTS (librrd-1.3.8)

# Contribute

Please test the gem on different systems and report success and/or failure.
Open issues and/or submit pull requests with fixes.

Thank you!

# Maintainer

Bernd Ahlers <bernd@tuneafish.de>

# Copyright

Since the files have been taken from the [rrdtool](http://www.mrtg.org/rrdtool/)
sources, all files in this project are available under the
[GNU General Public License](http://www.gnu.org/copyleft/gpl.html). See the
COPYING and COPYRIGHT for details.
