describe Spree::StoreShippingMethod do
  it { should belong_to(:store).class_name('Spree::Store') }
  it { should belong_to(:shipping_method).class_name('Spree::ShippingMethod') }
end
