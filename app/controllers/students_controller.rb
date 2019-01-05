class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    # raise params.inspect
    @student = Student.create post_params(:first_name, :last_name)
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find params[:id]
  end

  private

  def set_student
    @student = Student.find params[:id]
  end

  def post_params(*args)
    params.require(:student).permit(*args)
  end
end
