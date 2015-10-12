class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_param)
		if @user.save
			redirect_to root_path
		end
	end

	def edit
		@user = User.find(params[:id])

	end

	def update

	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to root_path
	end

	private

	def user_param
		params.require(:user).permit(:nickname, :level, :loot)
	end

end
