class ShipItem < ActiveRecord::Base
	validates :part, presence: true
	validates :date, presence: true 
end
