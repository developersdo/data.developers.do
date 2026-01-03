module Api
  module V1
    class ProvinciasController < Api::BaseController
      def index
        @provincias = Provincia.all

        respond_to do |format|
          format.json { render json: @provincias.to_json }
          format.xml { render xml: @provincias }
          format.csv { render plain: @provincias.to_csv }
          format.xls { render plain: @provincias.to_csv(col_sep: "\t") }
        end
      end

      def show
        @provincia = Provincia.find(params[:id])

        respond_to do |format|
          format.json { render json: @provincia.to_json }
          format.xml { render xml: @provincia }
          format.csv { render plain: @provincia.to_csv }
          format.xls { render plain: @provincia.to_csv(col_sep: "\t") }
        end
      end

      def municipios
        @municipios = Provincia.find(params[:id]).municipios

        respond_to do |format|
          format.json { render json: @municipios.to_json }
          format.xml { render xml: @municipios.to_xml }
          format.csv { render plain: @municipios.to_csv }
          format.xls { render plain: @municipios.to_csv(col_sep: "\t") }
        end
      end
    end
  end
end
