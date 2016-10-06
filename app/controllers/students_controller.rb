class StudentsController < ApplicationController
  def show
    @student = Student.find_by_id(params[:id])
    if @student
      respond_to do |format|
        format.json { render json: @student.to_json(:include => [:teachers, :courses]), status: 200 }
      end
    else
      respond_to do |format|
        format.json { render json: { :errors => @student.errors.full_messages }, status: :unprocessable_entity  }
      end
    end
  end
end
