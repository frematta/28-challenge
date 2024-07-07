class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :identifier
      t.integer :quantity
      t.float :price
      t.text :instructions
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
    add_index :products, :id
  end
end
