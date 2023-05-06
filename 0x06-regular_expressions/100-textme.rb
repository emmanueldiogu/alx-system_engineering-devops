#!/usr/bin/env ruby

# Define a regular expression to extract the necessary information
regex = /\[from:(?<sender>[^\]]+)\] \[to:(?<receiver>[^\]]+)\] \[flags:(?<flags>[^\]]+)\]/

# Read the log file line by line and extract the necessary information
File.foreach('text_messages.log') do |line|
  if match = regex.match(line)
    puts "#{match[:sender]},#{match[:receiver]},#{match[:flags]}"
  end
end
