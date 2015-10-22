class HomepagesController < ApplicationController

	def index
		@equipments = Equipment.all
	end

	def search
		@equipments = Equipment.select{|equ| equ.name.include?(params[:name])}
		render 'index'
		# binding.pry
	end

end