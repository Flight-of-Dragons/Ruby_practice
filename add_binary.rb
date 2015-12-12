def add_binary(a,b)

	c = a + b

	d ||= []

	while c >= 1

		d << c % 2

		c /= 2

	end

	return "#{d.reverse.join}"

end

x = gets.chomp.to_i

y = gets.chomp.to_i

puts add_binary(x,y)
