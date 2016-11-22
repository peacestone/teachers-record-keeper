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
    #binding.pry
    @teacher = Teacher.find_by(id: params[:id])
    @teacher.update(params[:teacher])
    
    params[:subjects][:subject_ids].each do |id|
      @teacher.subjects << Subject.find_by(id: id)
    end

    @teacher.subjects << Subject.create(params[:new_subject]) if !params[:new_subject].empty?

    @teacher.save

    redirect "/teachers/#{@teacher.id}"

  end
end
