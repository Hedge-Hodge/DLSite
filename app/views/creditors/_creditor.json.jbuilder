json.extract! creditor, :id, :user, :transaction_id, :confirmed, :created_at, :updated_at
json.url creditor_url(creditor, format: :json)
