require 'rails_helper'

RSpec.describe Category, type: :model do
  it "has a valid factory" do
    expect(build(:category)).to be_valid
  end

  let(:category) { build(:category) }

  it { expect(category).to have_many(:products)}
end
