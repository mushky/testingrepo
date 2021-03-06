class Cpar < ActiveRecord::Base
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
  	Cpar.where("old_id LIKE :search
  							OR iat_number LIKE :search 
  					    OR program LIKE :search 
  					    OR form LIKE :search
  					    OR title LIKE :search
  					    OR part_number LIKE :search 
  					    OR id LIKE :search", search: "%#{query}")
 	end

 	def self.open
 		Cpar.where("closed_out_by is NOT NULL")
 	end

	private
	  def sanitize_filename(filename)
	    return File.basename(filename)
	  end 

end
