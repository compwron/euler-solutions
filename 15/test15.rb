require File.expand_path(File.dirname(__FILE__) + '/15')
require 'test/unit'

class TestKpiTracker < Test::Unit::TestCase
  def test_useless
  	g = Grid.new(2)
    assert_equal 6, g.paths
  end
end

