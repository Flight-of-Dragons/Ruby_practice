puts "Start typing."

words ||= []

word = gets.chomp

while word != ""

	puts "Too many words, just one please." if word.split(" ").length > 1

	if word.split(" ").length == 1

		if words.empty? or word > words.last

			words << word

		else

			words.each { |w| words.insert(words.index(w),word) if word < w and words.count(word) == 0 }

		end

	end

	word = gets.chomp

end

words.each { |word| puts "#{word}" } if word == ""

