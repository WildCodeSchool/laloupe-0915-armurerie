class HomepagesController < ApplicationController

	def index
		@equipments = Equipment.all
	end

	def search
		@equipments = Equipment.find()
	end

end