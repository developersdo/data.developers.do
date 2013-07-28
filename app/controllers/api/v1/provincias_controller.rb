module Api
	module V1
		class ProvinciasController < ApplicationController
			respond_to :json, :xml, :csv, :xls

			def index
				@provincias = Provincia.all

				respond_to do |format|
					format.json {render json: @provincias.to_json()}
					format.xml {render xml: @provincias}
					format.csv {render text: @provincias.to_csv}
					format.xls {render text: @provincias.to_csv(col_sep: "\t")}
				end
			end
		end
	end
end