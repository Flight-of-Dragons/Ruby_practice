hours = 24 * 365

minutes = 60 * 24 * 365 * 10

seconds = 60 * 60 * 24 * 365

puts "The number of hours in a year are equal to: #{hours}" 

puts "The number of minutes in a decade are equal to: #{minutes}"

puts "How old are you?"

age = gets.chomp.to_i

leapy = age / 4

leapd = leapy * 60 * 60 * 24

sage = age * seconds + leapd

puts "You are #{sage} seconds old."

puts "On a scale of 1 - 10, how much do you like chocolate?"

choc = gets.chomp.to_i

eaten = 77 * choc * age * 52

weat = (100 - age) * 52 * choc *77

puts "You have eaten #{eaten} grams of chocolate in your life so far, and will eat another #{weat} grams before you die, should you live to be 100 years old."

m = 1234000000 / 60

h = m / 60

d = h / 24

y = d / 365

ly = y / 4

ld = ly * 60 * 60 * 24

aas = 1234000000 - ld

am = aas / 60

ah = am / 60

ad = ah / 24

ay = ad / 365

ey = ly / 365

ra = ay + ey

puts "I am #{ra} years old."








