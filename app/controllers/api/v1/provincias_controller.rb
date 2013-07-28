module Api
	module V1
		class ProvinciasController < ApplicationController
			respond_to :json

			def index
				respond_with Provincia.all.to_json
			end
		end
	end
end