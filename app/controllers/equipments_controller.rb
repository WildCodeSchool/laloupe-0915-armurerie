class EquipmentsController < ApplicationController

def index
		@equipment = Equipment.all
	end

	def new
		@equipment = Equipment.new
	end

	def create
		@equipment = Equipment.new(equip_param)
		if @equipment.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

	def user_param
		params.require(:equipment).permit(:name, :item, :location, :price, :level, :bonus, :material)
	end

end
