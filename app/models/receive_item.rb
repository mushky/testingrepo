class ReceiveItem < ActiveRecord::Base
	validates :date, presence: true
	validates :completed, :acceptance => true

	def self.search(query)
  	where("serial like ?", "%#{query}%")
  end

end
