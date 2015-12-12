puts "Please give me your first name?"

name1 = gets.chomp

puts "Please give me your middle name(s)?"

name2 = gets.chomp

puts "Please give me your surname?"

name3 = gets.chomp

name = name1 + " " + name2 + " " + name3

puts "So your name is #{name}?  Very pleased to meet you, #{name}."

puts "#{name1}, what is your favourite number?"

favNum = gets.chomp.to_i

favNum += 1

puts "That's a bit small.  I think #{favNum} is a better number to have."
