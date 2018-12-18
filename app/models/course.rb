class Course < ApplicationRecord
  has_many :cohorts
  validates :name, presence: true
end
