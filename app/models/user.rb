class User < ApplicationRecord
  has_secure_password

  validates :username, :name, :email, presence: true
end
