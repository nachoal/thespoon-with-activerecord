class AddAddressToRestaurant < ActiveRecord::Migration[6.0]
  def change
    # method   # table       # column  # type 
    add_column :restaurants, :address, :string
  end
end
