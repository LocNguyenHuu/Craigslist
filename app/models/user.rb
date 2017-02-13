class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true
  validates :password, length: {minimum: 6}

  has_many :articles

  has_secure_password
end
