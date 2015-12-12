puts "HELLO, DEARIE."

ans = gets.chomp

bye = 0

while bye < 3

    year = rand(1930..1950)

    puts ans != ans.upcase ? "HUH?!  SPEAK UP DEAR!" : "NO, NOT SINCE #{year}!"

    ans = gets.chomp

    ans == "BYE" ? bye += 1 : bye = 0

end
