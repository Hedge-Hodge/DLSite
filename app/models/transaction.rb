class Transaction < ApplicationRecord
  has_many :debtors, dependent: :destroy
  has_one :creditor, dependent: :destroy
end
