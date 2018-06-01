module SpreeMultiDomain::LineItemConcerns
  extend ActiveSupport::Concern

  class ProductDoesNotBelongToStoreError < StandardError; end

  included do
    prepend(InstanceMethods)

    before_create :ensure_product_belongs_to_store
  end

  module InstanceMethods
    private

    def ensure_product_belongs_to_store
      if order.store_id.present? && !product.store_ids.include?(order.store_id)
        raise ProductDoesNotBelongToStoreError
      end
    end
  end
end
