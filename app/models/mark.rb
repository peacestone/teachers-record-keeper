class Mark < ActiveRecord::Base
  belong_to :student
  belong_to :test
end
