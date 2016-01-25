class ChangeRequest < ActiveRecord::Base
  def self.search(query)
  	ChangeRequest.where("id like ?", "%#{query}%")
  	# where("program like ?", "%#{query}%")
  	#ChangeRequest.where("old_id LIKE :search OR program LIKE :search OR form LIKE :search OR id LIKE :search", search: "%#{query}")
  end
end
