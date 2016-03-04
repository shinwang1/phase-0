def factorial(number) #input is a integer
  if number == 0 || number == 1 #if number is 0 or 1, output 1
    return 1
  end
  
  product = number #initiate variable and assign it to the input
  while number > 1 #loop from number until it counts down to > 0
    product = product * (number - 1)#if number = 2, then product = number * number - 1
    
    number -= 1#number = number minus 1
   
  end
  
  return product #output
  
end