class Admin < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.admin = true
  end

  def name
    name = self.first_name + " " + self.last_name
    return name
  end
end
