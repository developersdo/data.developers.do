module Api
  module V1
    class FeriadosController < Api::BaseController
      def index
        @feriados = Feriado.by_year(params[:id].to_i)

        respond_to do |format|
          format.json { render json: @feriados.to_json }
          format.xml { render xml: @feriados }
          format.csv { render plain: @feriados.to_csv }
          format.xls { render plain: @feriados.to_csv(col_sep: "\t") }
        end
      end
    end
  end
end
