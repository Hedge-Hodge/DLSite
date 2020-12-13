class Debtor < ApplicationRecord
  belongs_to :deal
  belongs_to :user
  validates :sum, presence: true
end
