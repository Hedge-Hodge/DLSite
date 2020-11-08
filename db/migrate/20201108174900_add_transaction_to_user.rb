class AddTransactionToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :transactions, :integer, array: true, default: []
  end
end
