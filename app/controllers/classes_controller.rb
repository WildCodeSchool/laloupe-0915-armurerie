class ClassesController < ApplicationController

	def index
		@classes = Classe.all
	end

	def show
		@classe = Classe.find(params[:id])
	end

	def new
		@classe = Classe.new
	end

	def create
		@classe = Classe.new(classe_param)
		if @classe.save
			redirect_to classes_path, notice: "La classe \"#{@classe.name}\" a été ajoutée avec succés"
		else
			render 'new'
		end
	end

	def edit
		@classe = Classe.find(params[:id])
	end

	def update
		@classe = Classe.find(params[:id])
		oldname = @classe.name
		if @classe.update(classe_param)
			if @classe.name == oldname
				redirect_to classes_path, notice: "#{@classe.name} a été modifié avec succés"
			else
				redirect_to classes_path, notice: "#{oldname} a été modifié en #{@classe.name} avec succés"
			end
		else
			render 'edit'
		end
	end

	def destroy
		@classe = Classe.find(params[:id])
		@classe.destroy

		redirect_to classes_path, notice: "La classe \"#{@classe.name}\" a été supprimée avec succés"
	end
	

	private

	def classe_param
		params.require(:classe).permit(:name)
	end


end


