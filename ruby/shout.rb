# 
#Release 1

# #Declare your module.

# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
# end

# #load our new module:

# #require_relative 'shout'
# #Shout.singleton_methods

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# end

# module Yelling_happily
#   def self.yell_happily(words)
#     words + "." + " :)"
#   end
# end

# require_relative 'shout'
# Shout.singleton_methods

# require_relative 'yelling_happily'
# Yelling_happily.singleton_methods

# end 

#Release 2



module Shout
  def self.yell_happily(words)
    puts "We are SF! We are GIANT! Let's go GIANTS! #{words}" 
  end
end

class Cheerleader
  include Shout
end

class Fan
  include Shout
end

Fan = Fan.new
Fan.yell_happily("We love you")

Cheerleader = Cheerleader.new
Cheerleader.yell_happily("Go Team")

puts yell_happily

