class DojosController < ApplicationController
  def index
      @dojos = Dojo.all
      @students = Student.all
  end
  def new
  end
  def create
      dojo = Dojo.create(dojo_params)
      redirect_to '/'
  end
  def show
      @dojo = Dojo.find(params[:id])
      @students = @dojo.students
  end
  def edit
      @dojo = Dojo.find(params[:id])
  end
  def update
      dojo = Dojo.find(params[:id])
      dojo = Dojo.update(params[:id], dojo_params)
      redirect_to '/'
  end
  def delete
      dojo = Dojo.find(params[:id])
      dojo.destroy
      redirect_to '/'
  end

  private
    def dojo_params
        params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
