#!/usr/bin/env ruby

# Get the command line argument
if ARGV.length != 1
  puts "Usage: ruby 0-simply_match_school.rb <string>"
  exit 1
end
regex = /\[from:(?<sender>[^\]]+)\] \[to:(?<receiver>[^\]]+)\] \[flags:(?<flags>[^\]]+)\]/
# Find all occurrences of "school" and "School"
matches = ARGV[0].scan(regex)

# Join the matched substrings into a single string and print it
puts matches.join(',')
