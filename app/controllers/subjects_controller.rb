class SubjectsController < ApplicationController

  get "/subjects" do
    @subjects = current_teacher.subjects
    erb :"subjects/subjects"
  end

  post "/subjects/new" do
    if !params[:subject].empty?
      @subject = Subject.new(params[:subject])
      current_teacher.subjects << @subject
      @subject.save
    end
    redirect "/subjects"
  end

end
