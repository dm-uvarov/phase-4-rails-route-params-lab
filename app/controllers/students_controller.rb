class StudentsController < ApplicationController

  # def index
  #    if (params[:first_name] || params[:last_name])
  #     students = (Student.where(params[:first_name])&&Student.where(params[:last_name]))
  #    else
  #     students = Student.all
  #    end
  #   render json: students
  # end

  

  def index
    students = if params[:name]
                 Student.looking_by_name(params[:name])
               else
                 Student.all
               end    
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  
  end

end
