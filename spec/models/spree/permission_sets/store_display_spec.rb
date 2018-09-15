require 'spec_helper'

describe Spree::PermissionSets::StoreDisplay do
  let(:ability) { Spree::Ability.new nil }

  subject { ability }

  context "when activated" do
    before { described_class.new(ability).activate! }

    it { should be_able_to(:display, Spree::Store) }
    it { should be_able_to(:admin, Spree::Store) }
  end

  context "when not activated" do
    it { should_not be_able_to(:display, Spree::Store) }
    it { should_not be_able_to(:admin, Spree::Store) }
  end
end

