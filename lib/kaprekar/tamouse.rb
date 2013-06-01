module Kaprekar
 
  module Tamouse

    module_function

    def kaprekar1?(k,debug=false)

      return false if (k < 1 || !k.is_a?(Integer))
      k=k.abs
      n = k.to_s.length
      ks = (k*k).to_s
      l = ((n-1)-(ks.length%2))
      l = 0 if l < 0

      nl = ks[0..l].to_i
      nr = ks[-n..-1].to_i

      if k == nl + nr
        puts "k=#{k}, n=#{n}, ks=#{ks}, l=#{l}, nl=#{nl}, nr=#{nr}, nl+nr=#{nl+nr}" if debug
        true
      else
        false
      end
      
    end

    def kaprekar2?(n,debug=false)
      return false if (n < 1 || !n.is_a?(Integer))
      n_sq = n**2;
      n_mag = Math.log10(n).floor+1
      arr = (n_mag...n_mag*2).collect{|y| p y if debug; y0=10**y; (n_sq/y0)+(n_sq%y0) }
      p arr if debug
      arr.include? n
    end

    def kaprekar3?(n,debug=false)
      return false if (n < 1 || !n.is_a?(Integer))
      n_sq = n**2;
      n_mag = n.to_s.size
      arr = (n_mag...n_mag*2).collect{|y| p y if debug; y0=10**y; (n_sq/y0)+(n_sq%y0) }
      p arr if debug
      arr.include? n
    end

  end

end
