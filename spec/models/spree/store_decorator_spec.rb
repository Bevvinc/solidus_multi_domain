require 'spec_helper'

describe Spree::Store do
  it { should have_many(:store_products).class_name('Spree::StoreProduct') }
  it { should have_many(:products).through(:store_products) }

  it { should have_many(:taxonomies).class_name('Spree::Taxonomy') }
  it { should have_many(:orders).class_name('Spree::Order') }

  it do
    should have_many(:store_shipping_methods)
      .class_name('Spree::StoreShippingMethod')
  end
  it { should have_many(:shipping_methods).through(:store_shipping_methods) }

  it do
    should have_many(:store_promotion_rules)
      .class_name('Spree::StorePromotionRule')
  end
  it { should have_many(:promotion_rules).through(:store_promotion_rules) }
end
