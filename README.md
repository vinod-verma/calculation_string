# Calculator String Class

The `CalculatorString` class provides methods for performing arithmetic operations.

## Methods

### `add(numbers)`

Calculates the sum of numbers provided as input.

- `numbers`: A string containing numbers separated by delimiters.

## Example Usage

```ruby
calculator = CalculatorString.new
sum = calculator.add("1,2,3")
puts sum # Output: 6
