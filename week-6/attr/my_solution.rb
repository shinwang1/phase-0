#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input: Initialize NameData with user name
# Output: Display a greeting with user name
# Steps:
# 1. Initialize NameData with a new name that is a string
# 2. Display the user name with a greeting.

class NameData
	attr_reader :name
	def given_name
		@name = "Shin"
	end
end


class Greetings
	def initialize
		@NameData = NameData.new
	end

	def hello
		puts "Hello #{@NameData.given_name}! How wonderful to see you today."
	end
end

greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."


# Reflection
=begin
############### Release 1
What are these methods doing?
These methods initialized, stored, reassigned and printed the information
for name, age, and occupation.

How are they modifying or returning the value of instance variables?
There are methods that reassign new passed in arguments to previously defined
instance variables. For example: change_my_name assigns a new input to the previously
defined @name. Also, an attribute reader (attr_reader) for the symbol :age and the
method "what_is_age" has been taken out. It seems that instance_of_profile.age is accessing
the instance variable @age directly with the symbol :age.

############### Release 2
What changed between the last release and this release? What was replaced?
The change_my_age method was changed and replaced with the attr_writer. This allows the
instance variable of age to be written over.

Is this code simpler than the last?
Yes this code is simpler.

############### Release 3
What changed between the last release and this release?
What was replaced?
The attr_accessor has replaced attr_reader and attr_writer. Age can be read and written over.

Is this code simpler than the last?
Yes this code is simpler.

############### Release 4

Refactoring can be found in the link below:
https://github.com/shinwang1/phase-0/blob/master/week-6/attr/release_5.rb

############### Release 6
What is a reader method?
The attribute reader method allow other Class to have read access to variables
contained in a different class.

What is a writer method?
The attribute writer method allow other Class to have write access to variables
contained in a different class.

What do the attr methods do for you?
The attr methods give permission to other classes to access and/or write data to
variables contained in a separate class.

Should you always use an accessor to cover your bases? Why or why not?
You shouldn't use accessors to cover your bases because you may want to let user
have read but not write or vice versa access. There are security reasons depending
on the type of program you write.

What is confusing to you about these methods?
I think writing them in general is a bit confusing since we were only used to writing
single methods. I thin it's interesting how variables and methods can be accessed across
classes. I will have to practice more with case uses to understand better.
=end