class AddAddressToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :address, :string
    add_column :products, :string, :string
  end
end
