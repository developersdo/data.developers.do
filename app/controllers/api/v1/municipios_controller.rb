module Api
  module V1
    class MunicipiosController < Api::BaseController
      def index
        @municipios = Municipio.all

        respond_to do |format|
          format.json { render json: @municipios.to_json(include: [:provincia]) }
          format.xml { render xml: @municipios.to_xml(include: [:provincia]) }
          format.csv { render plain: @municipios.to_csv }
          format.xls { render plain: @municipios.to_csv(col_sep: "\t") }
        end
      end

      def show
        @municipio = Municipio.find(params[:id])

        respond_to do |format|
          format.json { render json: @municipio.to_json(include: [:provincia]) }
          format.xml { render xml: @municipio.to_xml(include: [:provincia]) }
          format.csv { render plain: @municipio.to_csv }
          format.xls { render plain: @municipio.to_csv(col_sep: "\t") }
        end
      end
    end
  end
end
