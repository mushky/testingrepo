class Inventory < ActiveRecord::Base

  def self.search(query)
  	Inventory.where("part LIKE :search 
  									OR serial LIKE :search 
  									OR date LIKE :search 
  									OR description LIKE :search
  									OR quantity LIKE :search
  									OR completed LIKE :search
  									OR created_at LIKE :search
  									OR updated_at LIKE :search
  									OR employee LIKE :search
  									OR laptop_model LIKE :search
  									OR windows LIKE :search
  									OR office_suite LIKE :search
  									OR adobe_pro LIKE :search
  									OR adobe_stn LIKE :search
  									OR visual_studio LIKE :search
  									OR visio LIKE :search
  									OR status LIKE :search
  									OR other LIKE :search
  									OR iat_num LIKE :search
  									OR microsoft_project LIKE :search
  									OR nxpowerlite LIKE :search
  									OR win_pro LIKE :search
  									OR laptop_serial_number LIKE :search
  									OR in_use LIKE :search", search: "%#{query}")
 	end
end
