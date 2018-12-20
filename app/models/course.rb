class Course < ApplicationRecord
  has_and_belongs_to_many :cohorts
  validates :name, presence: true
end
