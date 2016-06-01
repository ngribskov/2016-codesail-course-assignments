# Week 2: Homework: 99 Bottles of Beer on the Wall

# Instructions:
# Write a script that outputs the lyrics to 99 Bottles of Beer on the Wall (http://www.99-bottles-of-beer.net/lyrics.html) using a for-loop
verse = Array(1..100)
verse.reverse!
verse.each do |num|
  if num > 2
    puts  (num - 1).to_s + " bottles of beer on the wall, " + (num - 1).to_s + " bottles of beer. Take one down and pass it around, " + (num - 2).to_s + " bottles of beer on the wall."
  elsif  num > 1
    puts (num - 1).to_s + " bottle of beer on the wall, " + (num - 1).to_s + " bottle of beer. Take one down and pass it around, no more bottles of beer on the wall."
  else
    puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end
