require 'benchmark'
require 'rubygems'
require 'ai4r'
require 'distance_measures'

require File.dirname(__FILE__) + '/../lib/k_means'

data = Array.new(1000) {Array.new(50) {rand(10)}} 

ai4r_data = Ai4r::Data::DataSet.new(:data_items=> data)

# Clustering can happen in magical ways
# so lets do it over multiple times
n = 5


Benchmark.bm do |x|
  x.report('Mine') do
    n.times { KMeans.new(data, :distance_measure => :euclidian_distance) }
  end
  
  x.report("Ai4R") do
    n.times do
      b = Ai4r::Clusterers::KMeans.new
      b.build(ai4r_data, 4)
    end
  end
end
