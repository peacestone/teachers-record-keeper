class SubjectsController < ApplicationController

  get "/subjects" do
    if logged_in?
      @subjects = Subject.all
      erb :"subjects/subjects"
    else
      redirect "/"
    end
  end

  post "/subjects/new" do
    if !params[:subject].empty?
      @subject = Subject.new(params[:subject])
      current_teacher.subjects << @subject
      @subject.save
    end
    redirect "/subjects"
  end

  get "/subjects/:id" do
    @subject = Subject.find_by(id: params[:id])
    if @subject
      @tests = current_teacher.tests
      erb :"subjects/show_subject"
    else
      redirect "/subjects"
    end
  end


end
