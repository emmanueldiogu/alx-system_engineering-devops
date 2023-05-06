#!/usr/bin/env ruby

# Get the command line argument
if ARGV.length != 1
    puts "Usage: ruby 0-simply_match_school.rb <string>"
    exit 1
  end
  
# Find all occurrences of "school" and "School"
matches = ARGV[0].scan(/hb{0,1}tn/)

# Join the matched substrings into a single string and print it
puts matches.join
