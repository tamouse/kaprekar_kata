 
 module Kaprekar

   module Alphonse23

     module_function

     def kaprekar0?(k)
       ks = k**2
       lenf = (ks.to_s.length)-1
       lenh = (ks.to_s.length / 2) - 1
       a = ks.to_s[0..lenh].to_i
       b = ks.to_s[lenh+1..lenf].to_i
       k == (a+b)
     end

     def kaprekar1?(k)
       a = (k**2).to_s[0..((((k**2).to_s.length) / 2) - 1)].to_i
       b = (k**2).to_s[(((((k**2).to_s.length) / 2) -
                         1)+1)..(((k**2).to_s.length)-1)].to_i
       k == (a+b)
     end


     def kaprekar3?(k)
       k == ((k**2).to_s[0..((((k**2).to_s.length) / 2) -
                             1)].to_i)+((k**2).to_s[(((((k**2).to_s.length) / 2) -
                                                      1)+1)..(((k**2).to_s.length)-1)].to_i)
     end

     def kaprekar4?(num)
       return false if num.zero?

       num_square = (num**2).to_s
       num_len = num_square.length
       midpoint = (num_len / 2)-1
       
       left = num_square[0..midpoint].to_i
       right = num_square[midpoint+1..-1].to_i
       
       num == left + right
     end

     def kaprekar5?(num)
       return false if num.zero?

       num_square = (num**2).to_s
       num_len = num_square.length
       midpoint = (num_len / 2)

       left = num_square[0..midpoint-1].to_i

       right = num_square[midpoint..-1].to_i

       num == left + right
     end

   end

 end
