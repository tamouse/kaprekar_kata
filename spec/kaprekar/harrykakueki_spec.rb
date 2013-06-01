require 'spec_helper'
require 'kaprekar.rb'

module Kaprekar

  describe HarryKakueki do
    @mymethods = [:try1,
                  :try2]
    
    @mymethods.each do |m|
      it {should respond_to(m)}
    end

    @mymethods.each do |m|
      context "##{m}" do
        GOOD_KAPREKAR.each do |k|
          it "#{k} should be kaprekar" do
            Kaprekar::HarryKakueki.send(m,k).should be_true
          end
        end
        NOT_KAPREKAR.each do |k|
          it "#{k} should NOT be kaprekar" do
            Kaprekar::HarryKakueki.send(m,k).should_not be_true
          end
        end
      end
    end
  end

end
