class ShipItem < ActiveRecord::Base
	validates :date, presence: true
	validates :completed, :acceptance => true

  def self.search(query)
  	where("parts like ?", "%#{query}%")
  end
end
