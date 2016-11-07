class ReceiveItem < ActiveRecord::Base
	validates :date, presence: true
	validates :completed, presence: true 
end
