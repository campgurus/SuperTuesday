class MenuItem < ActiveRecord::Base
	belongs_to :item
	belongs_to :menu
	validates_presence_of :menu_id
	validates_presence_of :item_id
end
