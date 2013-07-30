class Servicio < ActiveRecord::Base

	def btn_disabled

		if self.publicado == false
			return "disabled = \"disabled\""
		end

	end

end
