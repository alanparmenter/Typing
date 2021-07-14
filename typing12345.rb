start_time = Time.now
score = 0
for j in 1..10 do
	question_array = Random.new_seed.digits(5)
	question_string = ""
	answer_array = []
	answer_string = ""
	for i in 0..9 do
		question_string << (question_array[i]+1).to_s << " "
	end
	print question_string.chop + "\n"
	answer_array = gets.split(" ")
	for i in 0..9 do
		answer_string << answer_array[i].to_s << " "
	end
	if answer_string == question_string
		print "Correct! Well done!\n"
		score += 1
	else
		print "Incorrect! Try again!\n"
	end
	print "#{score}/#{j}\n"
end
end_time = Time.now
print "#{end_time.to_i - start_time.to_i} seconds\n"
