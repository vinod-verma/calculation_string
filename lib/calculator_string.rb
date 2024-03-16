class CalculatorString
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    custom_delimiter = numbers.match(/^\/\/(.+)\n/)
    if custom_delimiter
      delimiter = custom_delimiter[1][1..-2]
      numbers = numbers.sub(/^\/\/(.+)\n/, "")
    end

    numbers_array = numbers.split(/\n|#{delimiter}/)
    negative_numbers = numbers_array.select {|num| num.to_i < 0}
    if negative_numbers.any?
      raise ArgumentError, "Negative numbers not allowed: #{negative_numbers.join(",")}"
    end

    numbers_array.map(&:to_i).sum
  end
end
