require 'rails_helper'

RSpec.describe Item, type: :model do
  it "is invalid without price" do
    item = build(:item, price: nil)
    expect(item).to be_invalid
  end
  it "is invalid without name" do
    item = build(:item, name: nil)
    expect(item).to be_invalid
  end
end
