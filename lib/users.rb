def get_system_users
	user_list = Array.new()
	raw_list = IO.readlines("/etc/passwd")
	raw_list.each{|line|
		raw_user = line.split":"
		user = [raw_user[0],raw_user[4]]
		user_list << user
	}

	return user_list
end

