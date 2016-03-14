class Cpar < ActiveRecord::Base
	validates :form, presence: true

	def initialize(params = {})
	  file = params.delete(:file)
	  super
	  if file
	    self.filename = sanitize_filename(file.original_filename)
	    self.content_type = file.content_type
	    self.file_contents = file.read
	  end
	end

  def self.search(query)
  	# where("form like ?", "%#{query}%")
  	# where("program like ?", "%#{query}%")
  	Cpar.where("old_id LIKE :search OR program LIKE :search OR form LIKE :search OR id LIKE :search", search: "%#{query}")
 	end
  
	private
	  def sanitize_filename(filename)
	    return File.basename(filename)
	  end 

end
