cont = ["Table of Contents","Chapter 1: Numbers","Chapter 2: Letters","Chapter 3: Variables","page 1","page 72","page 118"]

lineWidth = 60

puts cont[0].center(lineWidth) 

puts "\n"

puts "#{cont[1].ljust(lineWidth/2)} #{cont[4].rjust(lineWidth/2)}" 

puts "#{cont[2].ljust(lineWidth/2)} #{cont[5].rjust(lineWidth/2)}" 

puts "#{cont[3].ljust(lineWidth/2)} #{cont[6].rjust(lineWidth/2)}" 
