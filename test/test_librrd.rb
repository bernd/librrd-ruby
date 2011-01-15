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
    assert(%w(fetch dump graph update).all? {|m| LibRRD.methods.include?(m) })
  end
end
