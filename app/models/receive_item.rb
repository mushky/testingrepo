class ReceiveItem < ActiveRecord::Base
	validates :date, presence: true
	validates :completed, :acceptance => true
end
