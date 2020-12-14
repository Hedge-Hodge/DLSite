class Deal < ApplicationRecord
  has_one :creditor, dependent: :destroy
  accepts_nested_attributes_for :creditor
  has_many :debtors, dependent: :destroy
  accepts_nested_attributes_for :debtors
  validates :credit_sum, presence: true
end
