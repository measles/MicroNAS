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

def get_live_users
	user_list = Array.new()
	raw_user_list = get_system_users
	home_list = Dir.entries("/home")

	raw_user_list.each do |user|
		if home_list.include?(user[0]) then
			user_list << user
		end
	end

	return user_list
end
