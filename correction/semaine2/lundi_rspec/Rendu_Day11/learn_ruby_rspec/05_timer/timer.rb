#write your code here
def time_string(a)
	time = a
	Time.at(time).utc.strftime("%H:%M:%S")
end	