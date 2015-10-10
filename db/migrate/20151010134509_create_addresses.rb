class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :state
      t.string :country
      t.integer :other_id
      t.string :other_type

      t.timestamps null: false
    end
  end
end
