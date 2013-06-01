
require "spec_helper.rb"
require "kaprekar.rb"

Kaprekar.constants.delete_if{|item| item == :VERSION}.each do |example|

  this_example = eval "Kaprekar::#{example}"

  these_methods = this_example.singleton_methods

  these_methods.each do |m|
    describe "#{this_example}##{m}" do
      GOOD_KAPREKAR.each do |k|
        it "#{k} should be kaprekar" do
          this_example.send(m,k).should be_true
        end
      end
      NOT_KAPREKAR.each do |k|
        it "#{k} should NOT be kaprekar" do
          this_example.send(m,k).should_not be_true
        end
      end
    end
  end
end
