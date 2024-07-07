class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    add_index :categories, :id
  end
end
