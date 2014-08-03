require './rule_header.rb'

def check_action(action) # checks rule for valid action
	return "ACTION OK" if actions.include? action
	return "ACTION FAILED" 
end

def check_variable(variable) # checks for $UPPER_CASE that starts with $
	if variable[0] == "$" && variable[1..-1] == variable[1..-1].upcase
			return "'#{variable}' is correct"
		else
			return "'#{variable}' is wrong"
		end
end

def check_direction(direction) # checks either '<-' or '->'
	return "DIRECTION OK" if  directions.include? direction # todo: needs execption to ensure only 1 exists
	return "DIRECTION FAILED"
end

