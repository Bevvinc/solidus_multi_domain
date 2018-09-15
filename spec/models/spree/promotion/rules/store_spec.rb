require 'spec_helper'

describe Spree::Promotion::Rules::Store do
  it do
    should have_many(:store_promotion_rules)
      .class_name('Spree::StorePromotionRule')
  end
  it { should have_many(:stores).through(:store_promotion_rules) }
end
