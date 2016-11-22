class Subject < ActiveRecord::Base
  belongs_to :teacher
  has_many :tests
  has_many :students, through: :tests
  has_and_belongs_to_many :students
end
