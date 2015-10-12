class User < ActiveRecord::Base
	validate_presence_of :nickname, :password, :level, :loot
end
