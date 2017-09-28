class User < ApplicationRecord
  has_secure_password

  validates :username, :name, :email, presence: true
  validates :password, length: { in: 6..20 }

  has_many :lists
end
