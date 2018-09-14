module Spree
  class StoreProduct < Spree::Base
    belongs_to :store, class_name: 'Spree::Store'
    belongs_to :product, class_name: 'Spree::Product'
  end
end
