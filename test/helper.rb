require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'distance_measures'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'k_means'

class Test::Unit::TestCase
  def assert_between(range, n)
    assert range === n
  end
end
