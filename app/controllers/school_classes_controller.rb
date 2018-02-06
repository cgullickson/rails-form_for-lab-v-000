class schoolclasssController < ApplicationController

  def index
    @schoolclasss = SchoolClass.all
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.new
    @schoolclass.save
    redirect_to school_class_path
  end

  def show
    @schoolclass = SchoolClass.find_by(params[:id])
  end

  def edit
    @schoolclass = SchoolClass.find_by(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find_by(params[:id])
    @schoolclass.update(school_class_params)
    redirect_to school_class_path(@schoolclass)
  end

  def delete
  end

  private

  def schoolclass_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
