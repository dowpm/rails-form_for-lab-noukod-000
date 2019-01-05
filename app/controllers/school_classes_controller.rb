class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    # raise params.inspect
    @school_class = SchoolClass.create post_params(:title, :room_number)
    redirect_to school_class_path(@school_class)
  end

  def show
    set_school_class
  end

  def edit
    set_school_class
  end

  def update
    set_school_class
    @school_class.update params[:school_class]
    redirect_to school_class_path
  end

  private

  def set_school_class
    @school_class = SchoolClass.find params[:id]
  end

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
end
