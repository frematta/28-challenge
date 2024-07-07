class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.boolean :has_service
      t.integer :minimum_age
      t.string :abbreviation

      t.timestamps
    end
    add_index :states, :id
  end
end
