class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.datetime :date_birth
      t.string :state_id

      t.timestamps
    end
    add_index :patients, :id
  end
end
