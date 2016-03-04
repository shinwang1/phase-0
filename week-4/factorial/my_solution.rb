# def factorial(number) #input is a integer
#   if number == 0 || number == 1 #if number is 0 or 1, output 1
#     return 1
#   else
#   	product = number #initiate variable and assign it to the input
#   	while number > 1 #loop from number until it counts down to > 0
#     	product = product * (number - 1)#if number = 2, then product = number * number - 1
    
#     	number -= 1#number = number minus 1
# 	end
#   end
  
#   return product #output
  
# end


def factorial(number)
	if zero_and_one(number) == true
		return 1
	else
		product = number *factorial(number-1)
	end
end

def zero_and_one(number)
	if number == 0 || number == 1
		return true
	end
end