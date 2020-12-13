class CreateDebtors < ActiveRecord::Migration[6.0]
  def change
    create_table :debtors do |t|
      t.references :user, null: false, foreign_key: true
      t.belongs_to :deal, null: false, foreign_key: true
      t.decimal :sum, precision: 8, scale: 2
      t.boolean :confirmed

      t.timestamps
    end
  end
end
