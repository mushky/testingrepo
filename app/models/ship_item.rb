class ShipItem < ActiveRecord::Base
	validates :date, presence: true
	validates :completed, presence: true

	def self.search(query)
  	ShipItem.where("part LIKE :search OR serial LIKE :search OR description LIKE :search OR id LIKE :search", search: "%#{query}")
 	end
end
