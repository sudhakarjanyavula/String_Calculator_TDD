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


    context "Given multiple numbers separated by commas and/or new lines" do
      it "handles new lines between numbers" do
        sum = @calc.lines_between_numbers("1\n2,3")
        expect(sum).to eql(6)
      end
  
      it "ignores empty strings between commas" do
        sum = @calc.lines_between_numbers("1,\n")
        expect(sum).to eql(1)
      end
  
      it "handles numbers separated only by new lines" do
        sum = @calc.lines_between_numbers("1\n2\n3\n4")
        expect(sum).to eql(10)
      end
    end

    context "Given multiple numbers separated by default or custom delimiters" do
      it "returns the sum of multiple numbers when separated by another custom delimiter" do
        sum = @calc.differentDelimiters("//|\n4|5|6")
        expect(sum).to eql(15)
      end
  
      it "handles new lines between numbers when separated by custom delimiter" do
        sum = @calc.differentDelimiters("//;\n1\n2;3")
        expect(sum).to eql(6)
      end
    end
end