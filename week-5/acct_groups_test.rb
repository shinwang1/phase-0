#### Solution 2 with hashes
=begin
def group_divider (array_of_names)
  if array_of_names == nil
    p "There's no one here."
  elsif array_of_names.length < 3
  	p "It's no fun in a group less than 3 people."
  elsif array_of_names.length == 3
  	group_hash = Hash.new
  	
  	array_of_names.each do |x|
      group_hash[x] = 1
    end
    p group_hash
  elsif array_of_names.length % 5 == 0 || array_of_names.length % 5 == 3 || array_of_names.length % 5 == 4
    group_hash = Hash.new
   
    counter = 0
    group_num_assigned = 1
    while counter < array_of_names.length
      group_hash[array_of_names[counter]] = group_num_assigned
      counter += 1
      if counter % 5 == 0
        group_num_assigned += 1
      end
    end
    p group_hash
  elsif array_of_names.length % 3 == 0  
    group_hash = Hash.new
   
    counter = 0
    group_num_assigned = 1
    while counter < array_of_names.length
      group_hash[array_of_names[counter]] = group_num_assigned
      counter += 1
      if counter % 3 == 0
        group_num_assigned += 1
      end
    end
    p group_hash
  else
    group_hash = Hash.new
   
    counter = 0
    group_num_assigned = 1
    while counter < array_of_names.length
    	group_hash[array_of_names[counter]] = group_num_assigned
      counter += 1
    	if counter % 4 == 0
    		group_num_assigned += 1
    	end
    end

    # let's do something about primes
  	p group_hash  
  end
  
end

def sort_by_group_num (list, key, value)

end
=end
#########################
# def grouper(names) # Gives different groups each time
#     i = 1
#     hash = {}
#     until names.length == 0
#       group = names.sample(3)
#       hash[group] = i
#       names = names - group
#       i += 1
#     end
#   if group.length < 2
#     hash.key(1) << group.join
#   end
#   hash.delete(group)
#   hash.each do |key,value|
#       puts "Group #{value} : #{key}"
#     end
# end


# def grouper(names) # Gives the same groups each time
#   i=0
#   j=2
#   k=1
#   hash = {}
#     until names.length == 0
#     group = names[i..j]
#     hash[group] = k
#     names.slice!(i..j)
#     k+=1
#     end
#   if group.length < 2
#     hash.key(1).push(group.join)
#   end
#   hash.delete(group)
#   hash.each do |key,value|
#     puts "Group #{value} : #{key}"
#   end
# end
#################################
def grouper(list)
  new_array = []
  while list.count != 0
    group = list.sample(4)
    new_array.push group
    for student in group
     list.delete(student)
    end
   end
  p new_array
end

students = ["Aarthi Gurusami", "Abid Ramay",
"Adam Zmudzinski",
"Alec Hendrickson",
"Alex Wen",
"Alicia Briceland",
"Allison Paul",
"Andrey Slonski",
"Anna Lansfjord",
"Ben Flores",
"Ben Sanecki",
"Bill Deng",
"Buck Melton",
"Caitlin Hoffman",
"Carlos Gonzalez",
"Chand Nirankari",
"Chris Henderson",
"Christopher Lamkin",
"Christyn Budzyna",
"Ché Sanders",
"Dan Park",
"David Ramirez",
"David Tao",
"David Walden",
"Denny Jovic",
"Dexter Moran",
"Diana Ozemebhoya Eromosele",
"Dominick Lombardo",
"Elan Kvitko",
"Elizabeth Alexander",
"Elizabeth Brown",
"Ena Bek",
"Esther Leytush",
"Evan Druce",
"Frank Lam",
"Gabriel Zurita",
"Jack Thatcher",
"Jason Milfred",
"John Colella",
"Jonathan Kaplan",
"Kelson Adams",
"Kristal Lam",
"Kunal Patel",
"Leland Meiners",
"Liam Binell",
"Lisa Buch",
"Lisa Dannewitz",
"Lyudmila Arinich",
"Mohamed Monekata",
"Parker Smathers",
"Patrick DeWitte",
"Renan Martins",
"Riley Scheid",
"Robin Soubry",
"Samantha Holmes",
"Scott Southard",
"Shaun R Sweet",
"Shin Wang",
"Sibel Ergener",
"Simon Thomas",
"Talal Talhouk",
"Ted Bogin",
"Traci Fong",
"Victoria Solorzano",
"one more"]

acct_groups = grouper(students)
#p acct_groups.invert[3]