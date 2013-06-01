module Kaprekar

  module HarryKakueki

    module_function

    def try1(n)
      s,a = n.to_s.size,[]
      (s...s*2).each{|y| a << (n **2)/(10**y)+(n**2)%(10**y)}
      a.include?(n)
    end

    def try2(n)
      s, q = n.to_s.size, n*n
      (s...s*2).each do|x|
        y = 10**x
        return true if n == q/y+q%y
      end
      false
    end

  end

end

