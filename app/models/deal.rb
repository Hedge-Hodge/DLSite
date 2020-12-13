class Deal < ApplicationRecord
  has_one :creditor, dependent: :destroy
  has_many :debtors, dependent: :destroy
  validates :credit_sum, presence: true
end
