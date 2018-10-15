#write your code here
def time_string(input)
	hour = min = sec = 0
	hour = input / 3600
	min = (input - hour * 3600) / 60
	sec = input - hour * 3600 - min * 60
	# sec= input%60
	# min = (input%3600/60).to_i
	# hour = (input/3600).to_i

	str_hour = format('%02d', hour)
	str_min = format('%02d', min)
	str_sec = format('%02d', sec)

	return "#{str_hour}:#{str_min}:#{str_sec}"
end