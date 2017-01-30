# check to see if a number (value) exists in an array.

def raffle_function(ticket_num, winning_num_array)
	# winning_num_array.include?(ticket_num)
	
	# if winning_num_array.include?(ticket_num)
	#	true
	# else
	#	false
	counter = []
	winning_num_array.each do |ticket|
		if ticket_num == ticket
			counter << ticket
		end
	end

	if counter.length > 0
		true
	else
		false
	end
	# puts counter
	# counter
end