class AddAddressesCountToPerson < ActiveRecord::Migration
  def change
    add_column :people, :addresses_count, :integer, :default=>0
  end
end
