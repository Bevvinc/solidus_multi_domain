Spree::Product.class_eval do
  has_many :store_products, class_name: 'Spree::StoreProduct'
  has_many :stores, through: :store_products

  scope :by_store, lambda { |store_id|
    joins(:store_products).where(spree_store_products: { store_id: store_id })
  }
end
