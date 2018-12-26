class Instructor < ApplicationRecord
  has_and_belongs_to_many :cohorts
  validates :first_name, presence: true
  validates :last_name, presence: true
  enum education: [:highschool, :college, :masters, :phd]
  validates :education, presence: true

  def name
    name = self.first_name + " " + self.last_name
    return name
  end
end
