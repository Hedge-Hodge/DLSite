json.extract! transaction, :id, :creditor_id, :credit, :decimal, :description, :group_id, :confirmed, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
