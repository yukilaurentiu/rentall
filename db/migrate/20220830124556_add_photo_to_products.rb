class AddPhotoToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :photo, :string
  end
end
