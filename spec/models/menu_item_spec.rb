require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  it "is invalid without menu_id" do
    menu_item = build(:menu_item, menu_id: nil)
    expect(menu_item).to be_invalid
  end
  it "is invalid without item_id" do
    menu_item = build(:menu_item, item_id: nil)
    expect(menu_item).to be_invalid
  end
end

describe "#new" do
  it "takes two parameters and returns a MenuItem object" do
	menu_item = build(:menu_item)
      menu_item.should be_an_instance_of MenuItem
  end
end
