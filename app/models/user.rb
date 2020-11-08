class User < ApplicationRecord
  validates :username, :given_name, :family_name, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :given_name, :family_name , length: { maximum: 100,
    too_long: "%{count} characters is the maximum allowed" }
  validates :email, confirmation: { case_sensitive: false }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
