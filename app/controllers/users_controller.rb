class UsersController < ApplicationController

	before_filter :authenticate_user!

	def index
		@users = User.all
		
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_param)
		@user.nickname = @user.nickname.capitalize
		if @user.save
			redirect_to users_path, notice: "\"#{@user.nickname}\" a été ajouté(e) avec succés"
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		oldname = @user.nickname
		if @user.update(user_param)
			if @user.nickname == oldname
				redirect_to users_path, notice: "#{@user.nickname} a été modifié avec succés"
			else
				redirect_to users_path, notice: "#{oldname} a été modifié en #{@user.nickname} avec succés"
			end
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		
		redirect_to users_path, notice: " \"#{@user.nickname}\" a été supprimé(e) avec succés"
	end

	private

	def user_param
		params.require(:user).permit(:nickname, :level, :loot)
	end

end
