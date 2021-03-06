class TestController < ApplicationController

  get "/tests" do
    binding.pry
    @tests = current_teacher.tests
    erb :"tests/tests"
  end

  get "/tests/new" do
    erb :"/tests/new_test"
  end

  post "/tests" do
    #binding.pry
    @test = Test.create(params)
    current_teacher.tests << @test

    redirect "/tests/<%=@test.id%>"
  end


  get "/tests/:id/marks/new" do
    @test = Test.find_by(id: params[:id])
    @students = @test.subject.students
    erb :"tests/new_mark"
  end

  get "/tests/:id" do
    @test = Test.find_by(id: params[:id])
    if @test
      @marks = @test.marks
      #binding.pry
      erb :"tests/show_test"
    end
  end




end
