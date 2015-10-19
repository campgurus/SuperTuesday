class Item < ActiveRecord::Base
	has_many :menu_items
	has_many :menus, through: :menu_items
	validates_presence_of :price
	validates_presence_of :name
end
