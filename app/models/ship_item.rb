class ShipItem < ActiveRecord::Base
	validates :date, presence: true
	validates :completed, presence: true

	def self.search(query)
  	where("part like ?", "%#{query}%")
 	end
end
