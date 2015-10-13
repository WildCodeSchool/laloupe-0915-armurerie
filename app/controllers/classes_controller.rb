class ClassesController < ApplicationController

	def index
		@classes = Classe.all
	end

	def new
		@classe = Classe.new
	end

	def create
		@classe = Classe.new(classe_param)
		if @classe.save
			redirect_to classes_index_path
		else
			render 'new'
		end
	end

	def edit
		@classe = Classe.find(params[:id])
	end

	def update
		@classe = Classe.find(params[:id])

		if @classe.update(classe_param)
			redirect_to classes_index_path
		else
			render 'edit'
		end
	end

	def destroy
		@classe = Classe.find(params[:id])
		@classe.destroy

		redirect_to classes_index_path
	end

	private

	def classe_param
		params.require(:classe).permit(:name)
	end


end


