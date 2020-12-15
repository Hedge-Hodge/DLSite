class User < ApplicationRecord
  validates :username, :given_name, :family_name, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :username,  length: { maximum: 25,
    too_long: "%{count} characters is the maximum allowed" }
  validates :given_name, :family_name,  length: { maximum: 100,
    too_long: "%{count} characters is the maximum allowed" }
  validates :email, confirmation: { case_sensitive: false }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_secure_password
  has_many :creditors
  has_many :debtors
end
