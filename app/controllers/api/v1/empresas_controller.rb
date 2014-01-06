module Api
	module V1
		class EmpresasController < ApplicationController
			respond_to :json, :xml, :csv, :xls

			def index
				@empresas = Empresa.find_by_rnc(params[:id])

				respond_to do |format|
					format.json {render json: @empresas.to_json()}
					format.xml {render xml: @empresas}
					format.csv {render text: @empresas.to_csv}
					format.xls {render text: @empresas.to_csv(col_sep: "\t")}
				end

			end
		end
	end
end