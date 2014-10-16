# Servicio
s = Servicio.create(nombre: "Empresas", descripcion: "Listado de empresas registradas en la DGII. Esta información viene del archivo que publica la DGII en http://www.dgii.gov.do/app/WebApps/Consultas/rnc/DGII_RNC.zip. NO garantizamos que esta información sea oficial o la mas actualizada.", publicado: true, url: "")

# Metodos
Detalle.create(descripcion: "Consulta por RNC", verbo:"Get", url: "v1/empresas/401506254", formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)

# RNC UPDATE #
Rake::Task['db:seed_live:update'].invoke