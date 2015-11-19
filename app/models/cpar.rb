class Cpar < ActiveRecord::Base
	attr_accessor :form_name

	def form_name
		
		if @cpar.form == "Preventive Action"
			@form_name = "CA"

		elsif @cpar.form == 'Corrective Action'
			@form_name = "PA"
		
		elsif @cpar.form == 'Non-Conforming Material'
			@form_name = "NC"

		elsif @cpar.form == "Supplier Corrective Action"
			@form_name = "SC"

		elsif @cpar.form == "Continual Improvement"
			@form_name = "CI"
		end
	end
end
