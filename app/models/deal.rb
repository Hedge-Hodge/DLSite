class Deal < ApplicationRecord
  has_one :creditor
  has_many :debtors
end
