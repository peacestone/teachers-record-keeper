require "./config/environment.rb"
use Rack::MethodOverride
use SubjectsController
use TestController
use TeacherController
run ApplicationController
