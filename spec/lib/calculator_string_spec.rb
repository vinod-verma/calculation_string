require_relative "../../lib/calculator_string.rb"

RSpec.describe CalculatorString do
  describe "#add" do
    context "when given an empty string" do
      it "returns 0" do
        expect(subject.add("")).to eq(0)
      end
    end

    context "when given a single number in string" do
      it "returns the number itself" do
        expect(subject.add("1")).to eq(1)
      end
    end

    context "when given two number in string seperated by comma" do
      it "return sum of numbers" do
        expect(subject.add("1,5")).to eq(6)
      end
    end

    context "when given multiple numbers seperated by commas in a string" do
      it "returns the sum of all numbers" do
        expect(subject.add("1,2,3,4,5")).to eq(15)
      end
    end

    context "when given any amount of numbers seperated by commas in string" do
      it "returns the sum of all numbers" do
        expect(subject.add("1,2,3,4,5,6,7,8,9,10")).to eq(55)
      end
    end

    context "when given numbers with new lines and commas" do
      it "returns the sum of all numbers" do
        expect(subject.add("1\n2,3")).to eq(6)
      end
    end

    context "when given a custom delimiter" do
      it "returns the sum of numbers using the custom delimiter" do
        expect(subject.add("//;\n1;2")).to eq(3)
      end
    end
  end
end
