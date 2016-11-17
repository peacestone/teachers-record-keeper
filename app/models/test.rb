class Test < ActiveRecord::Base
  has_many :marks
  has_many :students, through: :marks
end
