module Api
	module V1
		class FeriadosController < ApplicationController
			respond_to :json, :xml, :csv, :xls

			def index
				@feriados = Feriado.by_year(params[:id].to_i)

				respond_to do |format|
					format.json {render json: @feriados.to_json()}
					format.xml {render xml: @feriados}
					format.csv {render text: @feriados.to_csv}
					format.xls {render text: @feriados.to_csv(col_sep: "\t")}
				end

			end
		end
	end
end