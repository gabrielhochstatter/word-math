# Adding Words

A code exercise that allows written representations of numbers (for example "twenty two" or "one hundred and five") to be added together. 

So passing "twenty" and "thirty seven" as arguments to the `add` method should return "fifty seven", and passing "eight" and "two hundred and thirteen" would return "two hundred and twenty one".

At the moment the highest supported number is 999 ("nine hundred and ninety nine") and everything that results in more than that throws an error.

## Examples

```ruby
w = WordMath.new

# .add returns the sum of both numbers
w.add("three", "seven")
#=> "ten"

w.add("one hundred and five", "two hundred and fifty four")
#=> "three hundred and fifty nine"

# .subtract subtracts the second argument from the first
w.subtract("twenty", "twelve")
# => "eight"

w.subtract("one hundred and seventy", "one hundred and one")
# => "sixty nine"
```

## TODO:

- add support for multiplication and division.
- add support for numbers past 999.
- add support for negative numbers.

