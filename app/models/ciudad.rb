class Ciudad < ActiveRecord::Base
	attr_accessible :nombre, :municipio_id
	belongs_to :municipio
end
