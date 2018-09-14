describe Spree::StoreProduct do
  it { should belong_to(:store).class_name('Spree::Store') }
  it { should belong_to(:product).class_name('Spree::Product') }
end
