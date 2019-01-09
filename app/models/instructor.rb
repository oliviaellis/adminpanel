class Instructor < ApplicationRecord
  has_one_attached :avatar
  has_many :cohorts
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, inclusion: {in: 1..150, message: 'Must be between 1 and 150.'}
  validates :salary, numericality: { greater_than_or_equal_to: 0 }
  def name
    name = self.first_name + " " + self.last_name
    return name
  end
end
