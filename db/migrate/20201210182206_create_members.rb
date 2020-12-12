class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :user
      t.string :references
      t.belongs_to :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
