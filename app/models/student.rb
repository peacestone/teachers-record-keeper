class Student < ActiveRecord::Base
  has_many :marks
  has_many :tests, through: :marks
end
