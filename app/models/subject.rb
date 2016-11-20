class Subject < ActiveRecord::Base
  belongs_to :teacher
  has_many :tests
  has_many :students, through: :tests
end
