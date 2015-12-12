class OrangeTree

    def initialize

        @age = 0

        @height = 1

        @branches = 0

        @orangeCount = 0

        @living = true

    end

    def oneYearPasses

        if @orangeCount > 0

            puts "The over-ripe oranges fall from the branches to bruise as they hit the ground with a splat, before rotting away into the soil."

            @orangeCount = 0

        end

        @living = false if @age > 300

        if !@living

            puts "The orange tree dies and stops producing oranges."

            exit

        end

        @age += 1

        @height += 3

        @branches += @height - @age / 2 if @age > 8

        @orangeCount = rand(@branches * 4)

    end

    def countBranches

        @branches

    end

    def height

        @height

    end

    def countTheOranges

        @orangeCount

    end

    def pickAnOrange

        @orangeCount -= 1

        puts @orangeCount > 0 ? "You peel the orange and tear off a segment, squishing its juicy, succulent flesh between your teeth.  Before you know it you've eaten the whole, delicious orange." : "There aren't any more oranges this year, you've already eaten them all, greedy guts."

    end

end

tree = OrangeTree.new

for x in 1..150

    tree.oneYearPasses

end

tree.countBranches

tree.countTheOranges

tree.pickAnOrange

tree.countTheOranges

tree.oneYearPasses

tree.countTheOranges

for x in 1..tree.countTheOranges + 1 

  tree.pickAnOrange

end

tree.countTheOranges

tree.oneYearPasses

for x in 1..148

    tree.oneYearPasses

end


