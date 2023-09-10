class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]

  def index
    @students = Student.all
    render json: @students
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student, status: :created
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @student
  end

  def destroy
    @student.destroy
    head :no_content
  end

  def update
    if @student.update(student_params)
      render json: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  def search_by_cpf
    @student = Student.find_by(cpf: params[:cpf])
    if @student
      render json: @student
    else
      render json: { error: 'Student not found' }, status: :not_found
    end
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :cpf, :email)
  end
end
