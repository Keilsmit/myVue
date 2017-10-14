class User < ApplicationRecord
  has_secure_password
  has_secure_token :api_token

  validates :username, :name, :email, presence: true
  validates :password, length: { in: 6..20 }
  validates :email, {format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, uniqueness: true}

  has_many :lists
end
