class RemoveCreditorIdFromTransactions < ActiveRecord::Migration[6.0]
  def change
    remove_column :transactions, :creditor_id, :integer
    remove_column :transactions, :credit, :string
    remove_column :transactions, :group_id, :integer
    remove_column :transactions, :confirmed, :json
    remove_column :transactions, :decimal, :string
  end
end
