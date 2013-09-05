class Municipio < ActiveRecord::Base
	attr_accessible :nombre, :provincia_id
	belongs_to :provincia
end
