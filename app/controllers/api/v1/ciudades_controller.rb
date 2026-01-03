module Api
  module V1
    class CiudadesController < Api::BaseController
      def index
        @ciudades = Ciudad.all

        respond_to do |format|
          format.json { render json: @ciudades.to_json }
          format.xml { render xml: @ciudades.to_xml }
          format.csv { render plain: @ciudades.to_csv }
          format.xls { render plain: @ciudades.to_csv(col_sep: "\t") }
        end
      end

      def show
        @ciudad = Ciudad.find(params[:id])

        respond_to do |format|
          format.json { render json: @ciudad.to_json(include: [:municipio]) }
          format.xml { render xml: @ciudad.to_xml(include: [:municipio]) }
          format.csv { render plain: @ciudad.to_csv }
          format.xls { render plain: @ciudad.to_csv(col_sep: "\t") }
        end
      end
    end
  end
end
