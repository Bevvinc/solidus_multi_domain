class RenameStoreProducts < ActiveRecord::Migration[5.2]
  def change
    rename_table :spree_products_stores, :spree_store_products
  end
end
