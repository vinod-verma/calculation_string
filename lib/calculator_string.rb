class CalculatorString
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    custom_delimiter = numbers.match(/^\/\/(.+)\n/)
    if custom_delimiter
      delimiter = custom_delimiter[1][1..-2]
      numbers = numbers.sub(/^\/\/(.+)\n/, "")
    end

    numbers.split(/\n|#{delimiter}/).sum(&:to_i)
  end
end
