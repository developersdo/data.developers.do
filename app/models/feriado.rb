class Feriado < ActiveRecord::Base
	attr_accessible :fecha_original, :fecha_movido, :motivo

	def self.by_year(year)
	  dt = DateTime.new(year)
	  boy = dt.beginning_of_year
	  eoy = dt.end_of_year
	  where("fecha_original >= ? and fecha_original <= ?", boy, eoy)
	end

end
