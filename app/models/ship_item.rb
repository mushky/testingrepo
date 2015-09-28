class ShipItem < ActiveRecord::Base
	validates :part, presence: true,
	                    length: { minimum: 2 }
end
