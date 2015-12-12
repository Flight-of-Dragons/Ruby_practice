class Die

  def initialize

    puts "Do you want to set the die? y/n"

    if gets.chomp == "y"
        cheat
    else
        roll
    end
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat
    
    pn = 0 

    while pn < 1 or pn > 6 

      puts "What side do you wish to show?"

      pn = gets.chomp.to_i

      puts "You can't do that, this die has 6 sides" if pn < 1 or pn > 6

    end

    @numberShowing = pn

  end

end

d1 = Die.new

puts d1.showing

d1.roll

puts d1.showing
