class Cohort < ApplicationRecord
  has_and_belongs_to_many :students
  has_and_belongs_to_many :instructors
  belongs_to :course
  validates :name, presence: true
end
