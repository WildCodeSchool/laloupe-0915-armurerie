class EquipmentsController < ApplicationController

	def index
		@equipments = Equipment.all
	end

	def show
		@equipment = Equipment.find(params[:id])
	end

	def new
		@equipment = Equipment.new
	end

	def create
		@equipment = Equipment.new(equipment_param)
		if @equipment.save
			redirect_to equipments_path
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
			redirect_to equipments_path
		else
			render 'edit'
		end
	end

	def destroy
		@equipment = Equipment.find(params[:id])
		@equipment.destroy

		redirect_to equipments_path
	end


	private

	def equipment_param
		params.require(:equipment).permit(:name, :item, :location, :price, :level, :bonus, :material)
	end

end
