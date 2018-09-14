describe Spree::Taxonomy do
  it { should belong_to(:store).class_name('Spree::Store') }
end
