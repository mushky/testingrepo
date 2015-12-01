class Cpar < ActiveRecord::Base
  def self.search(query)
  	where("form like ?", "%#{query}%")
  	# where("program like ?", "%#{query}%")
  	# where("id like ?", "%#{query}%")
  end
end
