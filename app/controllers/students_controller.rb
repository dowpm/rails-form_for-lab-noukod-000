class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.find params[:id]
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find params[:id]
  end

  private

  def set_student
    @student = Student.find params[:id]
  end
end
