class Equipment < ActiveRecord::Base
	has_many :equip_classes
	has_and_belongs_to_many :orders

	validates_presence_of :name, message: "Le nom ne doit pas être vide"
	validates_presence_of :item, message: "L'item ne doit pas être vide"
	validates_presence_of :location, message: "L'emplacement ne doit pas être vide"
	validates_presence_of :level, message: "Le niveau ne doit pas être vide"
	validates_presence_of :price, message: "Le prix ne doit pas être vide"
	validates_uniqueness_of :name, scope: :name, message: "Cet élément est déjà utilisé"
end