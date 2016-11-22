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

      erb :"subjects/show_subject"
    else
      redirect "/subjects"
    end
  end

  
  post "/subjects/:id/tests" do
    @subject = Subject.find_by(id: params[:id])
    @test = Test.create(params[:test])
    #binding.pry
    @subject.tests << @test
    @subject.save
    redirect "/subjects/#{@subject.id}"
  end


end
