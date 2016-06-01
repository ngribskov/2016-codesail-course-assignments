#DRY-FizzBuzz
#function
def fizzbuzz(num) # performs the fizzbuzz calculation on an input number. no output
    if num % 3 == 0 && num % 5 == 0
      puts 'FizzBuzz'
    elsif num % 3 == 0
      puts 'Fizz'
    elsif num % 5 == 0
      puts 'Buzz'
    else
      puts num
    end
end

#proc
fizzproc = Proc.new do |num|
  if num % 3 == 0 && num % 5 == 0
    puts 'FizzBuzz'
  elsif num % 3 == 0
    puts 'Fizz'
  elsif num % 5 == 0
    puts 'Buzz'
  else
    puts num
  end
end
#lambda
fizzlamb = lambda do |num|
  if num % 3 == 0 && num % 5 == 0
    puts 'FizzBuzz'
  elsif num % 3 == 0
    puts 'Fizz'
  elsif num % 5 == 0
    puts 'Buzz'
  else
    puts num
  end
end

arraytofizz = Array(1..1000)

#each do
arraytofizz.each do |x|
  fizzbuzz(x)
end
  puts "======"
#upto
1.upto(arraytofizz[-1]) do |x|
  fizzbuzz(x)
end
  puts "======"
#map do
arraytofizz.map do |x|
  fizzbuzz(x)
end
  puts "======"
 # Procs
 # each do
arraytofizz.each do |x|
  fizzproc.call(x)
end
  puts "======"
#upto
1.upto(arraytofizz[-1]) do |x|
  fizzproc.call(x)
end
  puts "======"
#map do
arraytofizz.map do |x|
  fizzproc.call(x)
end
  puts "======"
# lambda
# each do
arraytofizz.each do |x|
  fizzlamb.call(x)
end
  puts "======"
#upto
1.upto(arraytofizz[-1]) do |x|
  fizzlamb.call(x)
end
  puts "======"
#map do
arraytofizz.map do |x|
  fizzlamb.call(x)
end
