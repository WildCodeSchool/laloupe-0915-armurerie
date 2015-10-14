class EquipmentsController < ApplicationController

def index
		@equipments = Equipment.all
	end

	def new
		@equipment = Equipment.new
	end

	def create
		@equipment = Equipment.new(equip_param)
		if @equipment.save
			redirect_to equipments_index_path
		else
			render 'new'
		end
	end


	def edit
		@equipment = Equipment.find(params[:id])
	end

	def update
		@equipment = Equipment.find(params[:id])

		if @equipment.update(equipment_param)
			redirect_to equipments_index_path
		else
			render 'edit'
		end
	end

	def destroy
		@equipment = Equipment.find(params[:id])
		@equipment.destroy

		redirect_to equipments_index_path
	end


	private

	def equipment_param
		params.require(:equipment).permit(:name, :item, :location, :price, :level, :bonus, :material)
	end

end
