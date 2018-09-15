module Spree
  class StoreShippingMethod < Spree::Base
    belongs_to :store, class_name: 'Spree::Store'
    belongs_to :shipping_method, class_name: 'Spree::ShippingMethod'
  end
end
