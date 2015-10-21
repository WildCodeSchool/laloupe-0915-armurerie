class User < ActiveRecord::Base
	has_many :baskets

	validates_presence_of :nickname, message: "Le nom ne doit pas être vide"
	validates_presence_of :level, message: "Le niveau ne doit pas être vide"
	validates_presence_of :loot, message: "Le butin ne doit pas être vide"
	validates_uniqueness_of :nickname, scope: :nickname, message: "Cet aventurier existe déjà"	
end

