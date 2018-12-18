class Cohort < ApplicationRecord
  has_and_belongs_to_many :students
  has_one :instructor
  has_one :course
  validates :name, presence: true
end
