class User < ApplicationRecord
  has_secure_password
  has_many :articles
  has_many :categories

  validates_presence_of :email, :username, :password_digest
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8, too_short: "Your password must contain at least 8 characters" }
  validates_format_of :email, with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
