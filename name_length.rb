puts "What is your name"

name = gets.chomp

words = name.split(" ")

char = Hash.new

words.each { |word| char[word] = word.length }

z = 0

char.each { |x,y| z = z + y }

puts "Did you know your name has #{z} letters in it?"
