#!/usr/bin/env ruby

Match = Struct.new(:match, :index) do
end

file = ARGV.first
lines = IO.readlines(file, chomp: true)
matches = []

# Iterate over each line in the file.
lines.each do |line|

    lines.each do |innerLine|
        puts "Comparing #{line} to #{innerLine}"
        mismatch = 0
        differIndx = 0

        for i in 0..line.length do

            if line[i] != innerLine[i]
                mismatch += 1
                differIndx = i
            end

            if mismatch >= 2
                break
            end
        end

        if mismatch == 1
            matches.push(new Match(line, differIndx))
        end
    end
end

puts "Matches found #{matches}"

for i in 0..matches.length do
   puts "Match without differing letter at index #{matches.index} : #{matches.match.slice! match.index}"
end
