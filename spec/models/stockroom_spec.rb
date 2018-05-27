require 'rails_helper'

RSpec.describe Stockroom, type: :model do
  it "has a valid factory" do
    expect(build(:stockroom)).to be_valid
  end

  let(:stockroom) { build(:stockroom) }

  it { expect(stockroom).to have_many(:products).through(:inventories) }
  it { expect(stockroom).to have_many(:inventories)}
end
