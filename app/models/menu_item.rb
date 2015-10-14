class MenuItem < ActiveRecord::Base
	validates_presence_of :menu_id
	validates_presence_of :item_id
end
