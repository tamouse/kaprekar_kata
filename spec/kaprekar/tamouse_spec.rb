require "spec_helper.rb"
require "kaprekar"

module Kaprekar

  describe Tamouse do
    @mymethods = [:kaprekar1?,
                  :kaprekar2?,
                  :kaprekar3?]

    
    @mymethods.each do |m|
      it {should respond_to(m)}
    end

    @mymethods.each do |m|
      context "##{m}" do
        GOOD_KAPREKAR.each do |k|
          it "#{k} should be kaprekar" do
            Kaprekar::Tamouse.send(m,k).should be_true
          end
        end
        NOT_KAPREKAR.each do |k|
          it "#{k} should NOT be kaprekar" do
            Kaprekar::Tamouse.send(m,k).should_not be_true
          end
        end
      end
    end
  end

end


    

