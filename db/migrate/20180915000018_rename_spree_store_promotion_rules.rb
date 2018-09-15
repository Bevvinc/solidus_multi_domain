class RenameSpreeStorePromotionRules < ActiveRecord::Migration[5.2]
  def change
    rename_table :spree_promotion_rules_stores, :spree_store_promotion_rules
  end
end
