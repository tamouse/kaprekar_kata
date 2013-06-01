module Kaprekar

  module PeterHickman

    module_function

    def kaprekar?(k)
      ks = (k**2).to_s
      lenks = ks.length

      lenf = (lenks)-1
      lenh = (lenks/2)-1

      a = ks[0..lenh].to_i
      b = ks[lenh+1..lenf].to_i

      k == (a+b)
    end

  end

end
