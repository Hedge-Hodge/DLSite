class CreateCreditors < ActiveRecord::Migration[6.0]
  def change
    create_table :creditors do |t|
      t.references :user
      t.belongs_to :deal, null: false, foreign_key: true
      t.boolean :confirmed

      t.timestamps
    end
  end
end
