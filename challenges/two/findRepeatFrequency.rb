#!/usr/bin/env ruby

file = ARGV.first
frequency = 0
lines = IO.readlines(file, chomp: true)
quitLimit = 2;

freqCount = Hash.new(0);
freqCount[frequency] = 1;

lines.each do |line|
#    puts "First value of line: #{line[0,1]}"
    if line[0,1] == "+"
        addVal = line[1, line.length - 1].to_i
        frequency += addVal 
#        puts "Add value #{addVal}"
    elsif line[0,1] == "-"
        subVal = line[1, line.length - 1].to_i
        frequency -= subVal 
#        puts "Remove value #{subVal}"
    end
    
    freqCount[frequency] = freqCount[frequency] + 1;
    puts "\t frequency: #{frequency}"
    if freqCount[frequency] == quitLimit
        puts "FREQUENCY at #{quitLimit} is #{frequency}"
    end
    
end

puts "Final Value: #{frequency}"
