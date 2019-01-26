#!/usr/bin/env ruby

file = ARGV.first
finalValue = 0
lines = IO.readlines(file, chomp: true)
numPairs = 0;
numTrios = 0;

# Iterate over each line in the file.
lines.each do |line|
count = Hash.new(0)

    # Iterate over each character in the file line.
    for i in 0..line.length do
        count[line[i]] += 1;
    end

    # Increase pairs count if count hash has an occurance of exactly 2.
    if !count.key(2).nil?
        numPairs += 1;
    end

    # Increase the Trios count if count hash has an occurance of exactly 3.
    if !count.key(3).nil?
        numTrios += 1;
    end

    # Reset the count hash for the next line
    count = Hash.new(0);
end

puts "Num Pairs: #{numPairs} Num Trios: #{numTrios} Checksum: #{ numPairs * numTrios}"
