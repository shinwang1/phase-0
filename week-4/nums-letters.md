#What does puts do?

the command **puts** returns nil and prints the output to the console with a new line. For example, when you enter > puts 1, 2 the display the below outputs.
1
2

#What is an integer? What is a float?

An integer is a whole number that can be written without a fractional component. They are both positive, negative, and zero.

A float is different from an integer in that it can be represented in fractions by means of digits after the decimal.

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

The difference between integers and floats is precision. If you were to perform a mathematic calculation (i.e. division) between non-multiples like 4 and 3 (4/3), then you would get two separate answers. If you tell the computer to display the answer as an integer, then you would get 1. If you tell the computer to display the answer as a float, then you would get 1.333 depending on how many digits after the decimal you specify.

#Release 2
Hours in a year:
```ruby
def how_many_hours (year)
	hours = year * 365 * 24
	p hours
end

how_many_hours (1)
how_many_hours (2)
```

Minutes in a decade:
```ruby
def how_many_min (decade)
	min = decade * 365 * 24 * 60
	p min
end

how_many_min (1)
how_many_min (2)
```