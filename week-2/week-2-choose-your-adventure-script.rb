
require 'csv'
class Character
  attr_accessor :user_name, :lane_choice, :characteristic, :champion, :nometa, :strength
  def initialize()
    @user_name = false
    @lane_choice = false
    @characteristic = false
    @champion = false
    @strength = 0

    def characteristic?
      if @characteristic != 'badass' && @characteristic != 'scaredy cat'
        puts "Its got to be one of them..."
        false
      end
    end
    def isrenekton?
      if @champion == 'yes' || @champion == 'y'
        @champion == 'renekton'
        true
      else
        false
      end
    end
    def iszed?
      if @champion == 'yes' || @champion == 'y'
        @champion = 'zed'
      else
        false
      end
    end
    def isdraven?
      if @champion == 'yes' || @champion == 'y'
        @champion = 'draven'
      else
        false
      end
    end
    def isthresh?
      if @champion == 'yes' || @champion == 'y'
        @champion = 'thresh'
      else
        false
      end
    end
    def isrengar?
      if @champion == 'yes' || @champion == 'y'
        @champion = 'rengar'
      else
        false
      end
    end
    def isnasus?
      if @champion == 'yes' || @champion == 'y'
        @champion = 'nasus'
      else
        false
      end
    end
    def isziggs?
      if @champion == 'yes' || @champion == 'y'
        @champion = 'ziggs'
      else
        false
      end
    end
    def isezreal?
      if @champion == 'yes' || @champion == 'y'
        @champion = 'ezreal'
      else
        false
      end
    end
    def issoraka?
      if @champion == 'yes' || @champion == 'y'
        @champion = 'soraka'
      else
        false
      end
    end
    def iswarwick?
      if @champion == 'yes' || @champion == 'y'
        @champion = 'warwick'
      else
        false
      end
    end
  end
end
def output_border
  puts "=" * 20
  puts " "
end
def main
user = Character.new()
champs = CSV.read('C:\Users\ngrib_000\sail\gitpractice\niels-repo\niels-repo\week2\lolchamps.csv', headers: true)
fighters = champs.select {|x| x['primary'] == 'fighter'}
tanks = champs.select {|x| x['primary'] == 'tank'}
assasins = champs.select {|x| x['primary'] == 'assasin'}
mages = champs.select {|x| x['primary'] == 'mage'}
supports = champs.select {|x| x['primary'] == 'support'}
marksmen = champs.select {|x| x['primary'] == 'marksman'}
output_border
puts "WELCOME TO YOUR NEW ADVENTURE:
\n THE LEAGUE OF DRAAAAVEN!"
output_border
puts "WHAT'S YOUR NAME?"
user.user_name = gets.chomp.strip
output_border
puts "WELCOME, #{user.user_name.capitalize}!"
output_border
puts "WHICH POSITION DO YOU PLAY?"
puts "ex. sup, adc, etc..."
user.lane_choice = gets.chomp.strip.downcase
output_border
while user.characteristic? == false
  puts "ARE YOU A BADASS OR A  scaredy cat?"
  user.characteristic = gets.chomp.strip.downcase
end
output_border
if user.characteristic == 'badass'
  if user.lane_choice == 'top'
    while user.isrenekton? == false
      puts "Renekton is a good choice. Do you want to play him?"
      user.champion = gets.chomp.strip.downcase
    end
  elsif user.lane_choice == 'mid'
    while user.iszed? == false
      puts "Zed is a good choice. Do you want to play him?"
      user.champion = gets.chomp.strip.downcase
    end
  elsif user.lane_choice == 'adc'
    while user.isdraven? == false
      puts "Draven is a good choice. Do you want to play him?"
      user.champion = gets.chomp.strip.downcase
    end
    puts "oh yeah. DRRRRRRAAAAAAAAAAVVVVVEN"
  elsif user.lane_choice == 'sup'
    while user.isthresh? == false
      puts "Thresh is a good choice. Do you want to play him?"
      user.champion = gets.chomp.strip.downcase
    end
  elsif user.lane_choice == 'jg'
    while user.isrengar? == false
      puts "Rengar is a good choice. Do you want to play him?"
      user.champion = gets.chomp.strip.downcase
    end
  else
      puts "Off meta huh? Bold!"
      puts "Who do you want to play then?"
      while user.champion == false
        user.champion = gets.chomp.strip.downcase
        if champs.select {|x| x['champion'] == user.champion} == []
          puts "Bad Champion Name. Try again, don't include spaces"
          user.champion= false
        end
      end
    end
elsif user.characteristic == 'scaredy cat'
  if user.lane_choice == 'top'
    while user.isnasus? == false
      puts "Nasus is a safe choice. Do you want to play him?"
      user.champion = gets.chomp.strip.downcase
    end
  elsif user.lane_choice == 'mid'
    while user.isziggs? == false
      puts "Ziggs is a safe choice. Do you want to play him?"
      user.champion = gets.chomp.strip.downcase
    end
  elsif user.lane_choice == 'adc'
    while user.isezreal? == false
      puts "Ezreal is a safe choice. Do you want to play him?"
      user.champion = gets.chomp.strip.downcase
    end
  elsif user.lane_choice == 'sup'
    while user.issoraka? == false
      puts "Soraka is a safe choice. Do you want to play him?"
      user.champion = gets.chomp.strip.downcase
    end
  elsif user.lane_choice == 'jg'
    while user.iswarwick? == false
      puts "Warwick is a safe choice. Do you want to play him?"
      user.champion = gets.chomp.strip.downcase
    end
  else
    puts "Off meta huh? Bold!"
    puts "Who do you want to play then?"
    while user.champion == false
      user.champion = gets.chomp.strip.downcase
      if champs.select {|x| x['champion'] == user.champion} == []
        puts "Bad Champion Name. Try again, don't include spaces"
        user.champion= false
      end
    end
  end
end
output_border
if user.lane_choice == 'top'
  lane_opponent = fighters.shuffle.first[0]
elsif user.lane_choice == 'mid'
  lane_opponent = mages.shuffle.first[0]
elsif user.lane_choice == 'adc'
  lane_opponent = marksmen.shuffle.first[0]
elsif user.lane_choice == 'sup'
  lane_opponent = supports.shuffle.first[0]
elsif user.lane_choice == 'jg'
  lane_opponent = assasins.shuffle.first[0]
end

puts "GREAT! LETS GET ONTO THE RIFT!"
puts "YOUR LANE OPPONENT IS #{lane_opponent.capitalize}"
user.strength = champs.select {|x| x['champion'] == user.champion}[0]['attack'].to_f +  champs.select {|x| x['champion'] == user.champion}[0]['defense'].to_f +  champs.select {|x| x['champion'] == user.champion}[0]['ability'].to_f
user.strength /= champs.select {|x| x['champion'] == user.champion}[0]['diff'].to_f
lane_opponent_strength = champs.select {|x| x['champion'] == lane_opponent}[0]['attack'].to_f +  champs.select {|x| x['champion'] == lane_opponent}[0]['defense'].to_f +  champs.select {|x| x['champion'] == lane_opponent}[0]['ability'].to_f
lane_opponent_strength /= champs.select {|x| x['champion'] == lane_opponent}[0]['diff'].to_f
output_border
if user.champion == 'draven'
  puts "DRRRRRRAAAAAAAAAAVVVVVEN IS TOO STRONG. YOU WIN LANE EASILY, SNOWBALL, AND WIN THE GAME!"
  puts "DRRRRRRAAAAAAAAAAVVVVVEN!!!!!"
elsif user.strength > lane_opponent_strength
  puts "AS #{user.champion.capitalize}, YOU DOMINATE #{lane_opponent.capitalize}. YOUR LANE DOMINANCE SPREADS ACROSS THE RIFT"
  puts "VICTORY!"
elsif user.strength < lane_opponent_strength
  puts "#{lane_opponent.capitalize} BULLIES YOU IN LANE. WHEN THE GAME ENDS AT 20 MINUTES YOU JUST FINISH YOUR FIRST ITEM."
  puts "DEFEAT!"
elsif user.strength == lane_opponent_strength && rand(2) == 0
  nmejg = assasins.shuffle.first[0]
  puts "LANING PHASE WAS TOO CLOSE TO CALL. YOU HAD A CHANCE TILL THE ENEMY #{nmejg} CAMPED YOU. TOO BAD YOU FED #{nmejg}."
  puts "DEFEAT!"
else
  puts "LANING PHASE WAS TOO CLOSE TO CALL. #{lane_opponent} HAD A CHANCE TILL THE YOUR #{nmejg} CAMPED YOU. GOOD THING THEY FED #{nmejg}."
end
end

main
