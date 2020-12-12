class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :creditor_id
      t.string :credit
      t.string :decimal
      t.text :description
      t.integer :group_id
      t.json :confirmed

      t.timestamps
    end
  end
end
