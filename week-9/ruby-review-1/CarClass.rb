# # Create a Car Class from User Stories
# 
# 
# # I worked on this challenge [Renan Martins].
# 
# 
# # 2. Pseudocode
# // As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.

#  Input: Model and Color
#  Steps: define a funciton with two parameters
#          assignment for variables
#  Output: Car
#######################

# // As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.

# Input: distance
# Steps: set distance for car
# Output: car has a distance parameter
#######################
# // As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.

# Input: calling the speed
# Stepss: obtain current speed 
# Output: current speed
#######################

# // As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
# Input: one direction (left or right)
# Steps: step desired direction
# Output: car turns to the direction given
#######################
# // As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
# Input: Increase or descrease of speed
# Steps: Make change to speed
# Output: current speed
######################

# // As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
# Input: Call car
# Step: Call distance traveled
# Output: total distance traveled
#######################

# // As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
# Input: car
# Step: reset speed to zero
# Outlook: speed at zero
######################

# // As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.
# Input: car 
# Step: Set the latest action, store latest actions
#        Display each action in the action list
# Output: Display each action of the car with the latest action at the end
###################

# 
# # 3. Initial Solution
# class Car
  
#   def initialize(model, color)
#     @model = model
#     @color = color
#     @speed = 0
#     @direction = nil
#     @total_traveled = 0
#     @car_log = []
#     @pizzas = []
#   end
  
#   def travel_distance (distance)
#     @distance = distance
#     @car_log.push("Go #{@distance} miles.")
#     @total_traveled += @distance
#   end
  
#   def current_speed ()
#     @car_log.push("Your speed is #{@speed} mph.")
#   end
  
#   def turn_direction (direction)
#     @direction = direction
#     @car_log.push("You turned #{@direction}.")
#   end
  
#   def change_speed (set_speed)
#     @speed = set_speed
#     @car_log.push("Your speed changed to #{@speed} mph.")
#   end
  
#   def total_traveled_distance ()
#     puts "You've traveled #{@total_traveled} miles total."
#   end
  
#   def stop_car ()
#     @speed = 0
#     @car_log.push("You stopped the car.")
#   end
  
#   def play_by_play()
#     @car_log.each do |action|
#       puts action
#     end
#     total_traveled_distance
#   end
  
#   def add_pizza(pizza)
#     @pizzas.push(pizza)
#   end
  
#   def deliver_pizza()
#     @car_log.push("Delivered #{@pizzas.shift.flavor}")
#   end
  
#   def pizza_count
#     @car_log.push("There are #{@pizzas.size} pizzas left to deliver.")
#   end
  
# end

# class Pizza
#   attr_reader :flavor
  
#   def initialize(flavor, gluten_free = false)
#     @flavor = flavor
#     @gluten_free
#   end

# end


# # 4. Refactored Solution

class Car
  
  def initialize(model, color)
    @model = model
    @color = color
    @speed = 0
    @direction = nil
    @total_traveled = 0
    @car_log = []
    @pizzas = []
  end
  
  def travel_distance (distance)
    @distance = distance
    @car_log.push("Go #{@distance} miles.")
    @total_traveled += @distance
  end
  
  def current_speed ()
    @car_log.push("Your speed is #{@speed} mph.")
  end
  
  def turn_direction (direction)
    @direction = direction
    @car_log.push("You turned #{@direction}.")
  end
  
  def change_speed (set_speed)
    @speed = set_speed
    @car_log.push("Your speed changed to #{@speed} mph.")
  end
  
  def total_traveled_distance ()
    puts "You've traveled #{@total_traveled} miles total."
  end
  
  def stop_car ()
    @speed = 0
    @car_log.push("You stopped the car.")
  end
  
  def play_by_play()
    @car_log.each do |action|
      puts action
    end
    total_traveled_distance
  end
  
  def add_pizza(pizza)
    @pizzas.push(pizza)
  end
  
  def deliver_pizza()
    @car_log.push("Delivered #{@pizzas.shift.flavor}")
  end
  
  def pizza_count
    @car_log.push("There are #{@pizzas.size} pizzas left to deliver.")
  end
  
end

class Pizza
  attr_reader :flavor
  
  def initialize(flavor, gluten_free = false)
    @flavor = flavor
    @gluten_free
  end

end


# 
# # 1. DRIVER TESTS GO BELOW THIS LINE
my_pizza = Pizza.new("mozzarella")
your_pizza = Pizza.new("pepperoni", true) # for gluten-free
lalala = Pizza.new("lalala", false)

honda = Car.new("accord", "red")
honda.add_pizza(my_pizza)
honda.add_pizza(your_pizza)
honda.add_pizza(lalala)
honda.pizza_count

honda.change_speed(25)

honda.travel_distance(0.25)
honda.turn_direction("right")

honda.change_speed(35)
honda.travel_distance(1.5)

honda.deliver_pizza

honda.current_speed()
honda.change_speed(15)
honda.travel_distance(0.25)
honda.turn_direction("left")

honda.change_speed(35)
honda.travel_distance(1.4)

honda.deliver_pizza
honda.deliver_pizza
honda.pizza_count

honda.stop_car

honda.play_by_play




# # 5. Reflection
# What concepts did you review in this challenge?
# We reviewed making Classes in this challenge. Part of it comes with
# itializing instance varibles, calling thoses Class instances and using
# methods contained within the Class.

# What is still confusing to you about Ruby?
# I think Ruby is straight forward up to this point. I think there will be
# a lot needed to learn to get more advanced. 

# What are you going to study to get more prepared for Phase 1?
# I will study more by doing exercises.