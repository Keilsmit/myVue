class Users < ApplicationRecord

  has_secure_password

  validates :username, :email, presence: true
end
