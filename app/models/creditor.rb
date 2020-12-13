class Creditor < ApplicationRecord
  belongs_to :user
  belongs_to :deal
end
