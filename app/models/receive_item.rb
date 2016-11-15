class ReceiveItem < ActiveRecord::Base
	validates :date, presence: true
	validates :completed, :acceptance => true

	def self.search(query)
  	ReceiveItem.where("description LIKE :search OR part LIKE :search OR serial LIKE :search OR date LIKE :search OR id LIKE :search", search: "%#{query}")
  end

end
