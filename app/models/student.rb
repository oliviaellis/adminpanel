class Student < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :cohorts
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  enum education: [:highschool, :college, :masters, :phd]
  validates :education, presence: true

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.admin = false
  end

  def name
    name = self.first_name + " " + self.last_name
    return name
  end
end
