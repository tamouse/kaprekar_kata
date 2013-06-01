require "spec_helper.rb"
require "kaprekar"

module Kaprekar

  describe Alphonse23 do
    @mymethods = [:kaprekar0?,
                  :kaprekar1?,
                  :kaprekar3?,
                  :kaprekar4?,
                  :kaprekar5?]
    
    @mymethods.each do |m|
      it {should respond_to(m)}
    end

    @mymethods.each do |m|
      context "##{m}" do
        GOOD_KAPREKAR.each do |k|
          it "#{k} should be kaprekar" do
            Kaprekar::Alphonse23.send(m,k).should be_true
          end
        end
        NOT_KAPREKAR.each do |k|
          it "#{k} should NOT be kaprekar" do
            Kaprekar::Alphonse23.send(m,k).should_not be_true
          end
        end
      end
    end
  end

end


    
