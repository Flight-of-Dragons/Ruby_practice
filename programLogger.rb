def log (blockDescription, &block)

    puts "Beginning " + blockDescription + "."

    block.call

    puts blockDescription + " completed.  Return value: #{block.yield}"

end

log "Outer Block" do

    log "Second Block" do

        "I like Chinese."

    end

    log "Third Block" do

        5 * 12

    end

    2 + 3

end
