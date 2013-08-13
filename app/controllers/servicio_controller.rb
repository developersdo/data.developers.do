class ServicioController < ApplicationController
  
  def show
  	@servicio = Servicio.find(params[:id])
  end

end
