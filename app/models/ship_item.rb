class ShipItem < ActiveRecord::Base
	validates :part, presence: true
end
