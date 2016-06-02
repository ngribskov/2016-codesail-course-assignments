#function
def validate(min,max) #serves to force user to input in a integer. Requires either an upper or lower bound, or both bounds. Input nil if no bound for argument.
  val = gets.chomp.strip
  if val.length + 1 < val.to_f.to_s.length # + 1 eliminates corner case where the float is 'x.'. Logic analyzes if input is integer, not float
    val = val.to_i
    if min == nil # allows for validating a range with no minimum
      if val > max
        puts "Invalid Entry"
        val = nil
      end
    elsif max == nil
      if val < min
        puts "Invalid Entry"
        val = nil
      end
    else
      if val < min || val > max
        puts "Invalid Entry"
        val = nil
      end
    end
    val
  else
    puts "Invalid Entry"
    val = nil
  end
end

puts "Welcome to Russian Roulette. Are you Feeling Lucky? Punk?"
puts "Rules: There are 6 barrels and you are playing against the computer. Pick the number of shots you want to take, but be careful, the computer will pick next, and you will take however many are left."
puts "What Size Gun shall we use? Input a positive integer."
player_ct = nil
chamber_size = nil
while chamber_size == nil #receives input from player to determine the size of the game.
  chamber_size = validate(1, nil)
end

puts "How many shots do you want? Enter an Integer between 1 and " + chamber_size.to_s + "."
while player_ct == nil #receives input from the player to determine how many shots to take before the computer.
  player_ct = validate(1,chamber_size)
end
chamber_size = chamber_size
comp_ct = player_ct + 1 #defines which barrel the computer will be shot with
live_bullet_barrel = rand(1..chamber_size)
bullet_location_array = Array(1..chamber_size)
bullet_location_array.shuffle! # randomizes which index holds the bullet
chamber = bullet_location_array.index(live_bullet_barrel) #determines which index holds the bullet
chamber1 = chamber + 1 #changes the chamber element address to which nth bullet it is

if chamber1 == player_ct
  puts "Bang! You're Dead!"
elsif chamber1 <= player_ct
    1.upto(player_ct - 1) do |click|
    puts "*Click*"
  end
  puts "Bang! You're Dead!"
elsif chamber1 == comp_ct
  1.upto(player_ct) do |click|
    puts "*Click*"
  end
  puts "You've survived. The Computer pulls the trigger: *Bang* You Win"
else
  1.upto(player_ct) do |click|
    puts "*Click*"
  end
  puts "The Computer takes one shot. *Click*. You have the rest of the shots"
  (comp_ct + 1).upto(chamber) do |click| #the plus one counts the shot fired at the computer which is output above
    puts "*Click*"
  end
  puts "Bang! You're Dead!"
  puts "You've been shot on shot " + chamber1.to_s
end
