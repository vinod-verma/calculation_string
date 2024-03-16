class CalculatorString
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    custom_delimiter = numbers.match(/^\/\/(.+)\n/)
    if custom_delimiter
      delimiter = custom_delimiter[1].scan(/\[(.*?)\]/).flatten.map {|d| Regexp.escape(d)}.join("|")
      numbers = numbers.sub(/^\/\/(.+)\n/, "")
    end

    delimiter_regex = Regexp.new(delimiter)
    numbers_array = numbers.split(/\n|#{delimiter_regex}/)
    negative_numbers = numbers_array.select {|num| num.to_i < 0}
    if negative_numbers.any?
      raise ArgumentError, "Negative numbers not allowed: #{negative_numbers.join(",")}"
    end

    valid_numbers = numbers_array.map(&:to_i).select { |num| num <= 1000 }

    valid_numbers.sum
  end
end
