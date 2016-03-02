# Good Guess

# I worked on this challenge [by myself, with: myself].


# Your Solution Below

# original answer
# def good_guess? (integer)
# 	if integer == 42
# 		return true
# 	else
# 		return false
# 	end
# end

# refactored answer
def is_42?(number)
	number == 42
end

def good_guess? (integer)
	is_42?(integer)
end
