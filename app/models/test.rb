class Test < ActiveRecord::Base
  has_many :marks
  has_many :students, through: :marks
  belongs_to :subject
  belongs_to :teacher
end
