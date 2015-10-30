class Material < ActiveRecord::Base
	validates_presence_of :name, message: "Le nom ne doit pas être vide"
	belongs_to :equipment
end
