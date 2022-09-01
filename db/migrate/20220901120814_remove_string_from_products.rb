class RemoveStringFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :string, :string
  end
end
