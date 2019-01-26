#!/usr/bin/env ruby

file = ARGV.first
lines = IO.readlines(file, chomp: true)
quitLimit = 2;
frequency = 0
freqCount = Hash.new(0);
freqCount[frequency] = 1;
indx = 0;

until freqCount[frequency] == quitLimit
    line = lines[indx];

    if line[0,1] == "+"
        addVal = line[1, line.length - 1].to_i
        frequency += addVal 
    elsif line[0,1] == "-"
        subVal = line[1, line.length - 1].to_i
        frequency -= subVal 
    end
    
    freqCount[frequency] += 1
    puts "\t frequency: #{frequency} : freqCount: #{freqCount[frequency]}"
    if freqCount[frequency] == quitLimit
        puts "FREQUENCY at #{quitLimit} is #{frequency}"
    end

   indx += 1

   if indx >= lines.length
       indx = 0
   end
end

puts "Final Value: #{frequency}"
