# I worked on this challenge [by myself, with: Riley Scheid].


# Your Solution Below

def valid_triangle?(a, b, c)
  sides = []
  sides << a << b << c
  sides = sides.sort
  if sides.include?(0)
  	return false
  elsif sides[0] + sides[1] > sides[2]
  	return true
  else
  	return false
  end
end