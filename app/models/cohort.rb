class Cohort < ApplicationRecord
  has_and_belongs_to_many :students
  has_and_belongs_to_many :instructors
  has_and_belongs_to_many :courses
  validates :name, presence: true
end
