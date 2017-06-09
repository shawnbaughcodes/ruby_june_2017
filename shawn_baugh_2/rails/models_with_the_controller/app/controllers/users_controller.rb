class UsersController < ApplicationController
    # INDEX ROUTE
  def index
      render json:User.all
  end
  # SHOW BY ID
  def show
      render json:User.first
  end
  # SHOW FORM
  def new
  end
  # POST TO CREATE USER
  def create
      User.create(name: params[:name])
      redirect_to '/index'
  end
  # EDIT USER
  def edit
      @user = User.first
  end
  def total
      @total = User.all.length
  end
end
