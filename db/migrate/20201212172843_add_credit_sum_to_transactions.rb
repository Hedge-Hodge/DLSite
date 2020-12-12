class AddCreditSumToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :credit_sum, :decimal, precision: 8, scale: 2
  end
end
