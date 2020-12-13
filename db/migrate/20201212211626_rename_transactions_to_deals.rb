class RenameTransactionsToDeals < ActiveRecord::Migration[6.0]
  def change
    rename_table :transactions, :deals
  end
end
