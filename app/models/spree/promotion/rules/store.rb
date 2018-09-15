module Spree
  class Promotion
    module Rules
      class Store < PromotionRule
        has_many :store_promotion_rules, class_name: 'Spree::StorePromotionRule',
          foreign_key: :promotion_rule_id
        has_many :stores, through: :store_promotion_rules

        def applicable?(promotable)
          promotable.is_a?(Spree::Order)
        end

        def eligible?(order, options = {})
          stores.none? || stores.include?(order.store)
        end

        def applicable?(promotable)
          promotable.is_a?(Spree::Order)
        end

        def store_ids_string
          store_ids.join(',')
        end

        def store_ids_string=(s)
          self.store_ids = s.to_s.split(',').map(&:strip)
        end
      end
    end
  end
end
