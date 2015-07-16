class AddOrientationToProducts < ActiveRecord::Migration
  def change
    add_column :products, :orientation, :string
  end
end
