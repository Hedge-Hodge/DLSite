class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.text :description
      t.decimal :credit_sum, precision: 8, scale: 2
      t.boolean :confirmed

      t.timestamps
    end
  end
end
