class Servicio < ActiveRecord::Base
  has_many :detalles

  def btn_disabled
    return unless publicado == false

    'disabled = "disabled"'
  end
end
