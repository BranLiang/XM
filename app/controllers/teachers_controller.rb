class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    respond_to do |format|
      format.json { render json: @teachers.to_json(:include => :courses), status: 200 }
    end
  end

  def destroy
    @teacher = Teacher.find_by_id(params[:id])
    if @teacher.destroy
      respond_to do |format|
        format.json { head :no_content, status: 200 }
      end
    else
      respond_to do |format|
        format.json { render json: {:errors => @teacher.errors.full_messages}, status: :unprocessable_entity }
      end
    end
  end
end
