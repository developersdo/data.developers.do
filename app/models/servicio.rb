class Servicio < ActiveRecord::Base
	attr_accessible :nombre, :descripcion, :publicado, :url

	def btn_disabled

		if self.publicado == false
			return "disabled = \"disabled\""
		end

	end

end
