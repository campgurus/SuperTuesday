class Menu < ActiveRecord::Base
	has_many :items, through: :menu_items
	validates_presence_of :date
end
