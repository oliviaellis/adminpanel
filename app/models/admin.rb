class Admin < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  
  def name
    name = self.first_name + " " + self.last_name
    return name
  end
end
