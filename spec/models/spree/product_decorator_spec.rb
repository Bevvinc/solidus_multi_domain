require 'spec_helper'

describe Spree::Product do
  let(:store) { create :store }
  let!(:product) { create :product, stores: [store] }
  let!(:product2) { create :product, slug: 'something-else' }

  it 'should correctly find products by store' do
    products_by_store = Spree::Product.by_store(store)

    expect(products_by_store).to include(product)
    expect(products_by_store).to_not include(product2)
  end
end
