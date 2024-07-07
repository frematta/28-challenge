class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.references :product, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.timestamps
    end
    add_index :purchases, :id
  end
end
