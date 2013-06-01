=begin rdoc

= JOSH_CREEK.RB

*Author*::      Tamara Temple <tamara@tamaratemple.com>
*Since*::       2013-06-01
*Copyright*::   (c) 2013 Tamara Temple Web Development
*License*::     MIT
  
=end

 
module Kaprekar

  module JoshCreek

    module_function

    def kaprekar?(num)
      return false if num.zero? || num.to_s =~ /^10+$/ # IDK why 0 and 10.. are disallowed when 1 is allowed, but w/e
      square   = (num * num).to_s
      midpoint = square.size / 2
      (0..midpoint).any? do |separation_index|
        first  = square[0...separation_index].to_i
        second = square[separation_index..-1].to_i
        num == first + second
      end
    end

  end

end
