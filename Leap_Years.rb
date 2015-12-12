puts "Give me a starting year."

syear = gets.chomp.to_i

puts "Now give me an ending year."

eyear = gets.chomp.to_i

years = []

while syear <= eyear do

    years.push(syear)

    syear += 1

end

years.each { |year| puts "#{year}" if year % 4 == 0 unless year % 100 == 0 and year % 400 != 0 }
