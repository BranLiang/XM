class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    respond_to do |format|
      format.json { render json: @teachers.to_json(:include => :courses), status: 200 }
    end
  end

  def destroy
    @teacher = Teacher.find_by_id(params[:id])
    respond_to do |format|
      if @teacher&.destroy
        format.json { head :no_content, status: 200 }
      else
        format.json { render json: {:errors => 'Not Found'}, status: :unprocessable_entity }
      end
    end
  end
end
