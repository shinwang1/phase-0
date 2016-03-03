#Release 1
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
#Release 5
[Defining Variables](https://github.com/shinwang1/phase-0/blob/master/week-4/defining-variable.rb)

[Simple String Methods](https://github.com/shinwang1/phase-0/blob/master/week-4/simple-string.rb)

[Local Variables and Basic Ops](https://github.com/shinwang1/phase-0/blob/master/week-4/basic-math.rb)

#Release 7 Reflections
#How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles these math operations as methods. This means that if we were to perform 1 + 2, then the plus sign performs the method of adding something (in this case the number 2) to the number 1.

#What is the difference between integers and floats?
Integers are whole numbers and floats are numbers that can be representated by certain fractions and decimals.

#What is the difference between integer and float division?
Integer division will return a whole number rounded up or down from a decimal number. Float division keeps the deciaml places to the right of the ones place. How many digits of the float number can be specified.

#What are strings? Why and when would you use them?
Strings are a data type of charcacters to represent text. However string can include numbers, spaces, and puncutations. If a number is places in a string, then it is not recognized as a number.

#What are local variables? Why and when would you use them?
Local variables are representative in scope of the variable. They are variables declared within a function or is an argument passed to a function. They can be used to take the instance of global variables without having it to change the global variable. This means that multiple functions (or methods in Ruby) can call upon the global variable and manipulate the data within their own functions with local variables.

#How was this challenge? Did you get a good review of some of the basics?
This challenge was pretty simple. I think it was a good review.
