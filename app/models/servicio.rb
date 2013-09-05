class Servicio < ActiveRecord::Base
	attr_accessible :nombre, :descripcion, :publicado, :url
	has_many :detalles

	def btn_disabled
		if self.publicado == false
			return "disabled = \"disabled\""
		end

	end

end
