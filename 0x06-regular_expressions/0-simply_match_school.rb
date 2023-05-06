#!/usr/bin/env ruby

# Get the command line argument
if ARGV.length != 1
    puts "Usage: ruby 0-simply_match_school.rb <string>"
    exit 1
  end
  
  # Check if the argument contains "School"
  if ARGV[0] =~ /.*School/
    puts ARGV[0].gsub(/.*?(School)/, '\1')
  else
    puts "No match"
  end
