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
    binding.pry
    @test = Test.create(params)
    current_teacher.tests << @test

    redirect "/tests/<%=@test.id%>"
  end

  get "/tests/:id" do
    @test = Test.find_by(id: params[:id])

    erb :"tests/show_test"
  end


end
