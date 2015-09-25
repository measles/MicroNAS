def get_all_users
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
	uid_min = nil
	raw_user_list = get_all_users

	IO.readlines("/etc/login.defs").each do |line|
		if line =~ /^UID_MIN/ then
			uid_min = line[/\d{2,}/].to_i
		end
	end

	raw_user_list.each do |user|
		if  user[2].to_i >= uid_min and user[2].to_i < 65534 then
			user_list << user
		end
	end

	return user_list
end
