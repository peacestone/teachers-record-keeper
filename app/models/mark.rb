class Mark < ActiveRecord::Base
  belongs_to :student
  belongs_to :test
  belongs_to :subject
end
