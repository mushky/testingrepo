class Actionitem < ActiveRecord::Base
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
  	where("subject like ?", "%#{query}%")
 	end

	def project_id
		if @actionitem.project == "Corporate" 
		  @project_id = "00" 
		  
		elsif @actionitem.project == "IRAD"
		  @project_id = "01" 

		elsif @actionitem.project == "MCTF"
		  @project_id = "02" 

		elsif @actionitem.project == "UAEAF"
		  @project_id = "03" 

		elsif @actionitem.project == "TAF" 
		  @project_id = "04" 

		elsif @actionitem.project == "DAW" 
		  @project_id = "05" 

		elsif @actionitem.project == "ESTS" 
		  @project_id = "07" 
		end 
	end 

	private
	  def sanitize_filename(filename)
	    return File.basename(filename)
	  end
end


