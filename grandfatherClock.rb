def grandfatherClock (&block)

    chime = 0

    time = Time.now.hour

    time = time - 12 if time > 12

    while chime < time do

        block.call

        chime += 1

    end

end

grandfatherClock do

    puts "Dong!"

end

grandfatherClock do

    puts "Ding!"

end

grandfatherClock do

    puts "BONG!"

end

grandfatherClock do

    puts "Diddle-dee-dee!"

end

grandfatherClock do

    puts "Cuckoo!"

end

grandfatherClock do

    x = 0

    chime.times do

        puts x

        x += 1

    end

end
