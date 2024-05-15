require './lib/calculator.rb'

describe Calculator do 

  before(:each) do 
    @calc = Calculator.new 
  end

  context "Given two numbers" do 
      it "returns 0 for an empty string" do
        sum = @calc.add("")
        expect(sum).to eql(0)
      end
    
      it "returns the number itself for a single number" do
        sum = @calc.add("5")
        expect(sum).to eql(5)
      end
    
      it "returns the sum of two numbers" do
        sum = @calc.add("2,3")
        expect(sum).to eql(5)
      end
    end
    context "Given multiple numbers" do
      it "returns the sum of multiple numbers" do
        sum = @calc.multiple_numbers("1,2,3,4,5")
        expect(sum).to eql(15)
      end
    end
end