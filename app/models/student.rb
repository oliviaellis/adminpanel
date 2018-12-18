class Student < ApplicationRecord
  has_and_belongs_to_many :cohorts
  validates :first_name, presence: true
  validates :last_name, presence: true
  enum education: [:highschool, :college, :masters, :phd]
  validates :education, presence: true
end
