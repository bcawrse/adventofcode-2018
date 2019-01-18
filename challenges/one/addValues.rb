#!/usr/bin/env ruby

file = ARGV.first
lines = IO.readlines(file, chop: true)

lines.each do |line|
    puts "Updating with line #{line}"
end
