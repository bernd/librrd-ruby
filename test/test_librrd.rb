require 'test/unit'
require 'librrd'

class TestLibRRD < Test::Unit::TestCase
  # RubyGems users expect when they install a gem that:
  #
  #   "gem name" == "name they require" == "name of object in global namespace".
  #
  # Alias RRD to LibRRD, so backwards compatibility is retained, but RubyGems
  # users aren't surprised.
  #

  def test_constant_defined
    assert(Object.const_defined?(:"LibRRD"))
  end

  def test_rrd_methods_defined
    assert(LibRRD.respond_to?(:fetch))
    assert(LibRRD.respond_to?(:dump))
    assert(LibRRD.respond_to?(:graph))
    assert(LibRRD.respond_to?(:update))
  end
end
