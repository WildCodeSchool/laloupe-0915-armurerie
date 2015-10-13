class StuffController < ApplicationController
  
  def index
  	@stuff = Stuff.all
  end

  def new
  	@stuff = Stuff.new
  end

  def create
  	@stuff = Stuff.new(stuff_params)

  	if @stuff.save
  		redirect_to stuff_index_path
  	else 
  		render 'new'
  	end
  end

  private 

  def stuff_params
    params.require(:stuff).permit(:name, :type, :matiere, :emplacement, :prix, :niveau, :bonus, :matiere)  
  end    

end
