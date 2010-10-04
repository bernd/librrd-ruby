librrd
======

# Description

This gem includes the [RRDtool](http://www.mrtg.org/rrdtool/) Ruby bindings from
the RRDtool sources. It should help people that are unable to use or don't have
some kind of `librrd-ruby` operating system package.

The `extconf.rb` tries to guess the librrd version installed on your system.
If it doesn't work, please try to adjust the `ext/librrd/extconf.rb` file
and submit a pull request or open an issue.

The following systems have been tested.

* Ubuntu 10.04 LTS (librrd-1.3.8)

The following Ruby versions have been tested with [RVM](http://rvm.beginrescueend.com/).

* ruby 1.9.2p0
* ruby 1.8.7p302
* rubinius 1.1.0
* ruby-enterpriseedition 1.8.7 2010.02

# Installation

Make sure you have the development package of `librrd` installed.
(like `librrd-dev` on Debian/Ubuntu) Then you can just `gem install`.

        gem install librrd

# Contribute

Please test the gem on different systems and report success and/or failure.
Open issues and/or submit pull requests with fixes.

Thank you!

# Links

* Source: http://github.com/bernd/librrd-ruby

# Maintainer

Bernd Ahlers

# Copyright

Since the files have been taken from the [RRDtool](http://www.mrtg.org/rrdtool/)
sources, all files in this project are available under the
[GNU General Public License](http://www.gnu.org/copyleft/gpl.html). See the
COPYING and COPYRIGHT for details.
