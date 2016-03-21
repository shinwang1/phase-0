# Virus Predictor

# I worked on this challenge [with: Mohamed Monekata].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
########### Original Code
# class VirusPredictor

#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

#   def virus_effects
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end

#   private

#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

############### Refactor
class VirusPredictor
  #This method initializes the Class with three arguments; these arguments are set as instance variables
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end

  #Method calls two private methods within the class that predicts deaths and speed of the spread.
  def virus_effects
    coeff = rate_of_deaths
    spread_month = speed_of_spread
    
    print "#{@state} will lose #{(@population * coeff).floor} people in this outbreak and will spread across the state in #{spread_month} months.\n\n"
  end
  
  private
  #Calculate the deaths in relation to population density and population by the state
  def rate_of_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      0.4
    elsif @population_density >= 150
      0.3
    elsif @population_density >= 100
      0.2
    elsif @population_density >= 50
      0.1
    else
      0.05
    end
  end

  #Calculate the speed of the virus spreading using the population density designated by the state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, hash|
  report = VirusPredictor.new(state)
  report.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The names of the states are stored as Strings. The population density and population are stored as symbols.
# When a symbol is created, its object ID will be unique throughout the program.

# What does require_relative do? How is it different from require?
# The 'require_relative' is able to load a file within th same or subdirectory. The 'require' is able to
# load a file from outside the current directory that the program is sitting in.

# What are some ways to iterate through a hash?
# Hashes can be iterated though using numerable methods.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The method called upon private methods within the class by passing along the instance variables. However, there wasn't
# a need to pass back the instance variables since the two other methods can access the instance variables.

# What concept did you most solidify in this challenge?
# The instance variables, along with the private methods demostrated how data access can be handled within a Class.
# I think I will get more of it once I wrote something similar myself.

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects