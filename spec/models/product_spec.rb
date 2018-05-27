require 'rails_helper'

RSpec.describe Product, type: :model do

  it "has a valid factory" do
    expect(build(:product)).to be_valid
  end

  let(:product) { build(:product) }

  it { expect(product).to have_many(:stockrooms).through(:inventories) }
  it { expect(product).to have_many(:inventories)}
  it { expect(product).to belong_to(:category)}
end
