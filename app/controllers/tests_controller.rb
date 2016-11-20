class TestController < ApplicationController

  get "/tests" do
    @tests = current_teacher.tests
    erb :"tests/tests"
  end

  get "/tests/new" do
    erb :"/tests/new_test"
  end

  post "/tests" do
    @test = Test.create(params)
    current_teacher.tests << @test

    redirect "/tests/<%=@test.id%>"
  end


end
