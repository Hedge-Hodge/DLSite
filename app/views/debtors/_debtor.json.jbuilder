json.extract! debtor, :id, :user_id, :transaction_id, :sum, :confirmed, :created_at, :updated_at
json.url debtor_url(debtor, format: :json)
