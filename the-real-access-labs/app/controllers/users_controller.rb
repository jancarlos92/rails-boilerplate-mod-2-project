class UsersController < ActionController::Base

	before_action :get_users, only: [:index, :edit, :update, :destroy, :show]

	def index
		
	end

	def show
		
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		redirect_to @user
	end

	def edit
		
	end

	def update
		@user.update(user_params)
		redirect_to @user
	end

	def destroy
		redirect_to users_path
	end

	private

	def user_params
		params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :profile_pic)
	end

	def get_users
		@user = User.find(params[:id])
	end

end
