class RenamePriceInProducts < ActiveRecord::Migration
  def change
  	rename_column :products, :price, :cost
  end
end
