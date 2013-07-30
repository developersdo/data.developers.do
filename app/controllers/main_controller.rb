class MainController < ApplicationController
  def index
  	@servicios = Servicio.all
  end
end
