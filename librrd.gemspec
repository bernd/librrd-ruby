Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'librrd'
  s.version           = '1.0.4'
  s.date              = '2013-07-19'

  s.summary     = "Ruby bindings for librrd"
  s.description = "Ruby bindings for librrd. Extracted from the RRDtool source."

  s.authors  = ["Bernd Ahlers"]
  s.email    = 'bernd@tuneafish.de'
  s.homepage = 'http://github.com/bernd/librrd-ruby'
  s.extensions = ["ext/librrd/extconf.rb"]

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[ext lib]

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md CHANGES.md]

  # = MANIFEST =
  s.files = %w[
    CHANGES.md
    COPYING
    COPYRIGHT
    README.md
    Rakefile
    VERSION
    ext/librrd/1.2/main.c
    ext/librrd/1.2/rrd_format.h
    ext/librrd/1.2/rrd_getopt.h
    ext/librrd/1.2/rrd_nan_inf.h
    ext/librrd/1.2/rrd_tool.h
    ext/librrd/1.3/main.c
    ext/librrd/1.4/main.c
    ext/librrd/extconf.rb
    lib/librrd.rb
    librrd.gemspec
    test/test_librrd.rb
    test/test_rrd.rb
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  #s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
