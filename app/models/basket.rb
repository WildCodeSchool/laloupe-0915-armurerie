class Basket < ActiveRecord::Base
	has_many :equipments
	belongs_to :user
end
