# Simple Substrings

# I worked on this challenge [by myself, with: Riley Scheid ].


# Your Solution Below

def welcome(address)
	split_address = address.split(" ")
  split_address.each do |word|
  	if word == "CA" || word == "California"
  		return "Welcome to California"
  	end
  end
  return "You should move to California"
end


# This solution also works:
# def welcome(address)
# 	return "Welcome to California" if address.include?("CA")
# 	return "You should move to California"
# end
