require File.dirname(__FILE__) + '/../lib/k_means'
require 'rubygems'
require 'ruby-prof'
require 'distance_measures'

data = Array.new(100) {Array.new(2) {rand}}

result = RubyProf.profile do
  a = KMeans.new(data, :distance_measure => :euclidean_distance)
end

printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT, 0)
