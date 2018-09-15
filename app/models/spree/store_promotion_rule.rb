module Spree
  class StorePromotionRule < Spree::Base
    belongs_to :store, class_name: 'Spree::Store'
    belongs_to :promotion_rule, class_name: 'Spree::Promotion::Rules::Store'
  end
end
