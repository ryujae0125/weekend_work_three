# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class TV
  attr_reader :power, :volume, :channel
  def initialize
    @power = "off"
    @volume = 5
    @channel = 2
  end
end

class Remote < TV
  def toggle_power
    if @power == "on"
      @power = "off"
    elsif @power == "off"
      @power = "on"
    end
  end

  def increment_volume
    @volume += 1
  end

  def decrement_volume
    if @volume == 0
      @volume
    else
      @volume -= 1
    end
  end

  def set_channel(channel)
    @channel = channel
  end
end

show = TV.new

result = show.power
puts "TV power is :"
puts result
if result == "off"
  puts "PASS!"
else
  puts "F"
end

result = show.volume
puts "TV volume is :"
puts result
if result == 0
  puts "PASS!"
else
  puts "F"
end

result = show.channel
puts "TV channel is :"
puts result
if result == 2
  puts "PASS!"
else
  puts "F"
end

control = Remote.new
control.toggle_power
result = control.power
puts "Power is :"
puts result
if result == "on"
  puts "PASS!"
else
  puts "F"
end


control.increment_volume
result = control.volume
puts "Volume is "
puts result
if result == 6
  puts "PASS!"
else
  puts "F"
end

control.decrement_volume
result = control.volume
puts "Volume is"
puts result
if result == 5
  puts "PASS!"
else
  puts "F"
end

control.set_channel(10)
result = control.channel
puts "Channel is"
puts result
if result == 10
  puts "Pass!"
else
  puts "F"
end
