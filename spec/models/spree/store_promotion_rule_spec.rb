describe Spree::StorePromotionRule do
  it { should belong_to(:store).class_name('Spree::Store') }
  it do
    should belong_to(:promotion_rule)
      .class_name('Spree::Promotion::Rules::Store')
  end
end
