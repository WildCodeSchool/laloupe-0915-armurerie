class Equipment < ActiveRecord::Base
	has_many :classes
	has_and_belongs_to_many :orders
end
