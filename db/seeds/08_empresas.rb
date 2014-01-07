# Servicio
s = Servicio.create(nombre: "Empresas", descripcion: "Listado de empresas registradas en la DGII. Esta información viene del archivo que publica la DGII en http://www.dgii.gov.do/app/WebApps/Consultas/rnc/DGII_RNC.zip. NO garantizamos que esta información sea oficial o la mas actualizada.", publicado: true, url: "")

# Metodos
Detalle.create(descripcion: "Consulta por RNC", verbo:"Get", url: "v1/empresas/401506254", formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)

#Data
File.open(File.dirname(__FILE__) +  "/DGII_RNC.TXT",  "r:windows-1251:utf-8") do |file|

	i = 0

    file.each do |line|

    	i = i + 1

    	begin
	      linea = line.split("|")

	      rnc = linea[0]
	      nombre = linea[1]

	      Empresa.create(rnc: rnc, nombre: nombre)

	      #if Rails.env.development?
		  #    if (i % 1000 == 0)
		  #    	print "Van #{i}\n"
		  #    end

		  #    break if i == 5000
		  #end

    	rescue Exception => e
    		print e
    		print line
    	end

    end
end