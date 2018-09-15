Spree::Store.class_eval do
  has_many :store_products, class_name: 'Spree::StoreProduct'
  has_many :products, through: :store_products

  has_many :taxonomies, class_name: 'Spree::Taxonomy'
  has_many :orders, class_name: 'Spree::Order'

  has_many :store_shipping_methods, class_name: 'Spree::StoreShippingMethod'
  has_many :shipping_methods, through: :store_shipping_methods

  has_many :store_promotion_rules, class_name: 'Spree::StorePromotionRule'
  has_many :promotion_rules, through: :store_promotion_rules

  has_attached_file :logo,
    styles: { mini: '48x48>', small: '100x100>', medium: '250x250>' },
    default_style: :medium,
    convert_options: { all: '-strip -auto-orient' }

  validates_attachment_file_name :logo, matches: [/png\Z/i, /jpe?g\Z/i],
    if: -> { respond_to?(:logo_file_name) }
end
