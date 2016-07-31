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

class Cheerleader
  include Shout
end

class Fan
  include Shout
end

module Shout
  def self.yell_happily(words)
    words "We are SF! We are GIANT! Let's go GIANTS! #{words}" 
  end
end

fan = Fan.new
fan.Shout("We love you")

cheerleader = Cheerleader.new
cheerleader.shout("Go Team")