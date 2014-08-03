#!/usr/bin/env ruby
require './rule_header.rb'
require './checks.rb'


=begin # 1st working block
print "Rule: "
user_rule = gets.chomp.split

# Test action
puts "ACTION: '#{user_rule[0]}' is correct!" if actions.include? user_rule[0]

# Test protocol
puts "PROTOCOL '#{user_rule[1]}' is correct!" if protocols.include? user_rule[1] 

# Test 1st IP Variable
ipvar = user_rule[2] # Isolate 
if ipvar[0] == "$"
  if ipvar[1..-1] == ipvar[1..-1].upcase
    puts "VARIABLE '#{ipvar}' is correct!"
  else
    puts "ERROR: '#{ipvar}' is not right.\nIt must:\n1. Start with '$'\n2. Be all caps (ex. $HTTP_SERVERS)\n"
  end
end
=end

# TEST ONLY
test_input = "alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS"

# create an array of strings from user's input
input_array = test_input.split(" ") 
# print "inspect 'input_array': "; p input_array # Debug






