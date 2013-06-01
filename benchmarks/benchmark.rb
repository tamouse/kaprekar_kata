require 'benchmark'
require "kaprekar.rb"

limit=1_000_000

Kaprekar.constants.delete_if{|item| item == :VERSION}.each do |example|

  this_example = eval "Kaprekar::#{example}"

  these_methods = this_example.singleton_methods

  Benchmark.bm(35) do |x|
    these_methods.each do |example_method|
      x.report("#{this_example}##{example_method}") do
        1.upto(limit) {|i| this_example.send(example_method, i)}
      end
    end
  end
end
