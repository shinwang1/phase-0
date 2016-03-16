# I worked with Renan Martins for 1 hr.

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x| 
  if x.kind_of?(Array)
    x.map { |y| y + 5 }
  else
    x + 5
  end
end

p number_array

# Bonus: Release 4

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

=begin
def add_ly(element)
 startup_names.map! do |name|
  if name.kind_of?(Array)
    name.map do |name2|
      if name2.kind_of?(Array)
        name2.map {|name3| name3 + "ly"}
      else
        name2 + "ly"
      end
    end
  else
    name + "ly"
  end
 end    
end
=end
######## Bonus Refactor
def add_ly(element)
  unless element.kind_of?(Array)
    element + "ly"
  else
    element.map do |x|
      add_ly(x)
    end
  end
end

puts "Calling add_ly..."
p add_ly(startup_names)

######### Release 5: Reflect
=begin
What are some general rules you can apply to nested arrays?
1. Check object type. Objects in an nested array can be any object type.
2. Remember that array index starts at 0, even for ones nested

What are some ways you can iterate over nested arrays?
1. Use a counter
2. Use booleans to test object types within the array
3. Use enumerables

Did you find any good new methods to implement or did you re-use one you were already familiar with?
What was it and why did you decide that was a good option?
The .kind_of? method was useful in this exercise. We were able to test object types in
a nested array. We also used the .map! and .map methods depending on whether we wanted
a certain type of results. For the bonus, we first solved with enumerables; however
we found that the method we wrote only works if we know how many layers the array is nested.
Therefore, we used a recursive methods to write the method in the refactoring.
=end