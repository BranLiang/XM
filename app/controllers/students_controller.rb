class StudentsController < ApplicationController
  def show
    @student = Student.find_by_id(params[:id])
    respond_to do |format|
      if @student
          format.json { render json: @student.to_json(:include => [:teachers, :courses]), status: 200 }
      else
          format.json { render json: { :errors => 'Not Found' }, status: :unprocessable_entity  }
      end
    end
  end
end
