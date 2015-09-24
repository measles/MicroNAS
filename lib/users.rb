def get_system_users
	user_list = Array.new()
	raw_list = IO.readlines("/etc/passwd")
	raw_list.each{|line|
		user = line.split":"
		user_list << user
	}

	return user_list
end

def get_live_users
	user_list = Array.new()
	raw_user_list = get_system_users

	raw_user_list.each do |user|
		if user[5] =~ /\/home\/./ and File.directory?(user[5]) then
			user_list << user
		end
	end

	return user_list
end
