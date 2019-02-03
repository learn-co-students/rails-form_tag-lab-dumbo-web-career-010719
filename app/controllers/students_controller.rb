class StudentsController < ApplicationController

  def index
    @students = Student.all
    render :index
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

  def new
    render :new
  end

  def create
    @new = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@new)
  end

end
