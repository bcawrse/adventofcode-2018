#!/usr/bin/env ruby

file = ARGV.first
lines = IO.readlines(file, chomp: true)
matches = []

# Iterate over each line in the file.
lines.each do |line|

    lines.each do |innerLine|
        puts "Comparing #{line} to #{innerLine}"
        mismatch = 0;

        for i in 0..line.length do

            if line[i] != innerLine[i]
                mismatch += 1
            end

            if mismatch >= 2
                break
            end
        end

        if mismatch == 1
            matches.push(line)
        end
    end
end

puts "Matches found #{matches}"

