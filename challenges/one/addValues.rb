#!/usr/bin/env ruby

file = ARGV.first
finalValue = 0
lines = IO.readlines(file, chomp: true)

lines.each do |line|
#    puts "First value of line: #{line[0,1]}"
    if line[0,1] == "+"
        addVal = line[1, line.length - 1].to_i
        finalValue += addVal 
#        puts "Add value #{addVal}"
    elsif line[0,1] == "-"
        subVal = line[1, line.length - 1].to_i
        finalValue -= subVal 
#        puts "Remove value #{subVal}"
    end
end

puts "Final Value: #{finalValue}"
