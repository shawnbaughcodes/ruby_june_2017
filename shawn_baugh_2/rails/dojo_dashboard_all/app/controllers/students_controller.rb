class StudentsController < ApplicationController
  def index
      @students = Student.all
  end

  def new
      @dojos = Dojo.all
  end

  def create
      student = Student.create(student_params.merge(dojo: Dojo.find(student_params[:dojo])))
      redirect_to '/dojos'
  end

  def delete
  end

  def show
  end

  def edit
  end

  def update
  end
  private
    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :dojo)
    end
end
