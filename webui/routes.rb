require 'sinatra'
require 'users'

set :port, 8080

get "/" do
	#@title = "User list"
	list = ""

	get_live_users.each{|user|
		list += "%p #{user[0]}\n"
	}
	haml list
	#haml :index
end
