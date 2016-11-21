class TeacherController < ApplicationController

  get "/teachers/:id" do
    @teacher = Teacher.find_by(id: params[:id])
    @subjects = @teacher.subjects if @teacher
    erb :"teachers/show_teacher"
  end

  get "/teachers/:id/edit" do
    @teacher = Teacher.find_by(id: params[:id])
    @subjects = Subject.all
    @students = Student.all
    erb :"teachers/edit_teacher"
  end

  patch "/teachers/:id" do
    "awesome"
    binding.pry
  end
end
