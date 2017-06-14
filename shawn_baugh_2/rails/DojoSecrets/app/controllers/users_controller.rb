class UsersController < ApplicationController
    def index
        render template:'users/dashboard'
    end
  def new

  end

  def create
      user = User.create(user_params)
      if user.valid?
          session[:user_id] = user.id
          redirect_to "/users/#{user.id}"
      else
          flash[:user_errors] = user.errors.full_messages
          redirect_to '/'
      end
  end

  def show
    #   @user = User.find(params[:id])
    @current_user = current_user
  end

  def edit
  end
  private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
