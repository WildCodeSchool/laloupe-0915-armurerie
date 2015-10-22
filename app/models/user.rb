class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :baskets

	validates_presence_of :nickname, message: "Le nom ne doit pas être vide"
	# validates_presence_of :level, message: "Le niveau ne doit pas être vide"
	# validates_presence_of :loot, message: "Le butin ne doit pas être vide"
	validates_uniqueness_of :nickname, scope: :nickname, message: "est déjà pris par un autre aventurier"	
end
