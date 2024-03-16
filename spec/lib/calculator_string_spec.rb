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
  end
end
