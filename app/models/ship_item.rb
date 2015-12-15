class ShipItem < ActiveRecord::Base
	validates :part, presence: true
	validates :date, presence: true 
	validates :completed, presence: true
end
