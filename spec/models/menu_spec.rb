require 'rails_helper'

RSpec.describe Menu, type: :model do
  it "is invalid without a date" do
    menu = build(:menu, date: nil)
    expect(menu).to be_invalid
  end
end

describe "#new" do
  it "takes a parameter and returns a Menu object" do
	menu = build(:menu)
      menu.should be_an_instance_of Menu
  end
end