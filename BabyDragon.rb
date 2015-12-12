class Dragon

    def initialize name

        @name = name

        @sex = ["male","female"].sample

        if @sex == "male"

            @gdr = "He"

        elsif @sex == "female"

            @gdr = "She"

        end

        @asleep = false

        @stuffInBelly     = 10  # He's full.

        @stuffInIntestine =  0  # He doesn't need to go.

        puts @name + ' is born.'

    end

  def dragonName

    @name

  end

  def dragonSex

    @sex

  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts "#{@gdr} giggles, which singes your eyebrows."
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts "#{@gdr} briefly dozes off..."
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts "#{@gdr} wakes up suddenly!"
      end
      puts @name + ' is starving!  In desperation, #{@gdr} ate YOU!'
      exit  # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "#{@gdr} wakes up suddenly!"
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "#{@gdr} wakes up suddenly!"
      end
      puts @name + ' does the potty dance...'
    end
  end

end

class Dragon

    def command

        @command = ""

        puts "What do you wish to do with #{@name}?"

        puts "You may \"feed\" #{@name}, \"walk\" #{@name}, \"toss\" #{@name}, \"rock\" #{@name} or \"put #{@name} to bed\"."

        puts "Or you may \"abandon\" your dragon."

        puts "use \"review\" for a reminder of these commands."

        while @command != "abandon #{@name}"

            @command = gets.chomp

            case @command

                when "review" then puts "You may \"feed\" #{@name}, \"walk\" #{@name}, \"toss\" #{@name}, \"rock\" #{@name} or \"put #{@name} to bed\".\n  Or you may \"abandon\" your dragon."

                when "feed #{@name}" then self.feed

                when "walk #{@name}" then self.walk

                when "toss #{@name}" then self.toss

                when "rock #{@name}" then self.rock

                when "put #{@name} to bed" then self.putToBed

                when "abandon #{@name}" then puts "#{@name} looks at you with big, sorrowful eyes and mews piteously.  Goodbye."

                else puts "#{@name} looks at you quizzically.  #{@gdr} doesn't understand that command."

             end

        end

    end

end

puts "Name your dragon."

pet = Dragon.new gets.chomp

pet.command

