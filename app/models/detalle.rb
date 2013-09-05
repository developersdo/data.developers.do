class Detalle < ActiveRecord::Base
	attr_accessible :descripcion, :verbo, :url, :formato_json, :formato_xml, :formato_csv, :formato_xls, :servicio_id
 	belongs_to :servicio
end
