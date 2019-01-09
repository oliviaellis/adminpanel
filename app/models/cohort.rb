class Cohort < ApplicationRecord
  has_and_belongs_to_many :students
  belongs_to :instructor
  belongs_to :course
  validates :name, presence: true
end
