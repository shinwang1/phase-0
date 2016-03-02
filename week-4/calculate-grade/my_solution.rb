# Calculate a Grade

# I worked on this challenge [by myself, with: Riley Kenyon].


# Your Solution Below

def get_grade (grade)
	if grade.between?(90,100)
		return 'A'
	elsif grade.between?(80,89)
		return 'B'
	elsif grade.between?(70,79)
		return 'C'
	elsif grade.between?(60,69)
		return 'D'
	else
		return 'F'	
	end
end
