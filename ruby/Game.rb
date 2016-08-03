# Release 0

# 1). What behaviors does the game have?
# The Cup Game's behaviors are shuffling cups, and confirming if the user guessed right. 

# 2). What state does the game have?
# The Cup Game's state 3 cups and 1 ball. 

# 3). Observe how the driver code acts as a bridge between the class and the user. 
# Are there times when user input cannot be passed directly to the class, 
# and instead must be adjusted from "human logic" to "computer logic"? No, it's mostly 
# computer logic. The user has few choices here, which is effective. 

# 4). What would you have to change if you wanted to limit how many guesses the user gets?
# I would end the method for guessing to 1. 

# Release 1: Design a Game

# 1). One user can enter a word (or phrase, if you would like your game to support that),
# and another user attempts to guess the word.
User1, User2

# 2). Guesses are limited, and the number of guesses available is related to the 
#length of the word.
Limit guess to length of the word.length

# 3). The guessing player receives continual feedback on the current state of the word. 
# So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _",
#  which would become "_ _ _ c _ _ _" after the user enters a guess of "c".

# 4). The user should get a congratulatory message if they win, and a taunting message if they lose.

# create your game in a Class form

class PlanetGame
#include readable and writable items that you want to call outside of the class in your driver code
  attr_reader :guess_count
  attr_reader :is_over
	
#initialize items you would like to use throughout the methods in your class 
  def initialize
    @planet_array = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    @guess_count = @planet_array.length
    @is_over = false
  end
  
  #shuffle the planet_array
  def shuffle
  	@planet_array.shuffle!
  end
  
  #check the planet word if it matches 
  def check_word(index)
  	@guess_count += 1
  	if @planet_array[index] == "1"
  		@is_over = true
  	else
  		false
  	end
  end
end

 def guess_count
 	@planet_array.length
end

# user interface

puts "Welcome to the Game !"
game = PlanetGame.new

puts "Shuffling astro words..."
game.shuffle

while !game.is_over
  puts "Guess the astro word! Enter a guess of 8 letters."
