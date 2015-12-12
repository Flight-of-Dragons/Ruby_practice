puts "Start typing."

words = []

word = gets.chomp

while word != ""

    puts "Too many words, just one please." if word.split(" ").length > 1

	words << word if word.split(" ").length == 1

	word = gets.chomp

end

words.sort!.each { |word| puts "#{word}" } if word == ""


