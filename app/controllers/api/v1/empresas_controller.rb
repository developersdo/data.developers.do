module Api
  module V1
    class EmpresasController < Api::BaseController
      def index
        @empresas = Empresa.find_by_rnc(params[:id])

        respond_to do |format|
          format.json { render json: @empresas.to_json }
          format.xml { render xml: @empresas }
          format.csv { render plain: @empresas.to_csv }
          format.xls { render plain: @empresas.to_csv(col_sep: "\t") }
        end
      end
    end
  end
end
