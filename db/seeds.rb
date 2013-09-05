# Servicios

# Servicio - Provincia
s = Servicio.create(nombre: "Provincias", descripcion: "Las provincias que componen la República Dominicana con sus respectivos codigos y descripciones", publicado: true, url: "")
Detalle.create(descripcion: "Listado completo de todas las provincias.", verbo:"Get", url: "v1/provincias", formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)
Detalle.create(descripcion: "Detalle de una provincia especifica. Recibe como parametro el ID de la provincia.<br><br>
			<span class='text-muted'>Ejemplo:</span>
			<code>
				<pre>
{
  id: 2,
  nombre: 'Altagracia',
  created_at: '2013-07-29T14:24:40.579Z',
  updated_at: '2013-07-29T14:24:40.579Z'
}
				</pre>
			</code>", verbo:"Get", url: "v1/provincias/1", formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)
Detalle.create(descripcion: "Todos los municipios que pertenecen a una provincia.", verbo:"Get", url: "v1/provincias/1/municipios", formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)

provincias_list = [
	[1, "Distrito Nacional" ],
	[2,"Altagracia"],
	[3,"Azua"],
	[4,"Bahoruco"],
	[5,"Barahona"],
	[6,"Dajabon"],
	[7,"Duarte"],
	[8,"El Seybo"],
	[9,"Elias Piña"],
	[10,"Espaillat"],
	[11,"Hato Mayor"],
	[12,"Independencia"],
	[13,"La Romana"],
	[14,"La Vega"],
	[15,"Maria Trinidad Sanchez"],
	[16,"Monseñor Nouel"],
	[17,"Montecristi"],
	[18,"Monte Plata"],
	[19,"Pedernales"],
	[20,"Peravia"],
	[21,"Puerto Plata"],
	[22,"Hermanas Mirabal"],
	[23,"Samana"],
	[24,"San Cristobal"],
	[25,"San Juan de la Maguana"],
	[26,"San Pedro de Macoris"],
	[27,"Sanchez Ramirez"],
	[28,"Santiago de los Caballeros"],
	[29,"Santiago Rodriguez"],
	[30,"Valverde"],
	[31,"San Jose de Ocoa"],
	[32,"Santo Domingo"]
]

provincias_list.each do |id, name|
	Provincia.create(id: id, nombre: name)
end

# Servicio - Municipios

s = Servicio.create(nombre: "Municipios", descripcion: "Los municipios de la República Dominicana con la provincia a la cual pertenecen", publicado: true, url: "")
Detalle.create(descripcion: "Listado completo de todas los municipios. Cada objeto incluye la provincia en los formato de XML y JSON.", verbo:"Get", url: "v1/municipios", formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)
Detalle.create(descripcion: "Detalle de un municipio especifico. Recibe como parametro el ID del municipio.<br><br>
			<span class='text-muted'>Ejemplo:</span>
			<code>
				<pre>
{
	id: 1,
	nombre: 'Prueba',
	provincia_id: 1,
	created_at: '2013-09-05T04:27:23.542Z',
	updated_at: '2013-09-05T04:27:23.542Z',
  -	provincia: {
		id: 1,
		nombre: 'Distrito Nacional',
		created_at: '2013-09-05T04:27:23.334Z',
		updated_at: '2013-09-05T04:27:23.334Z'
	}
}
				</pre>
			</code>", verbo:"Get", url: "v1/municipios/1", formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)


municipios_list = [
	[1, "Prueba", 1],
	[2, "Prueba2", 1],
]

municipios_list.each do |id, name, provincia_id|
	Municipio.create(id: id, nombre: name, provincia_id: provincia_id)
end

# Servicio - Sectores
s = Servicio.create(nombre: "Sectores", descripcion: "Los sectores de la República Dominicana con la provincia y el municipio al cual pertenecen", publicado: false, url: "")

# Servicio - Codigo postales
s = Servicio.create(nombre: "Codigos postales", descripcion: "Los codigos postales de la República Dominicana segun el INPOSDOM", publicado: false, url: "")

# Servicio - Empresas
s = Servicio.create(nombre: "Empresas", descripcion: "Listado de empresas registradas en la DGII", publicado: false, url: "")

# Servicio - Combustibles
s = Servicio.create(nombre: "Precios de los combustibles", descripcion: "Historico de precios de los combustibles segun el Ministerio de Industria y Comercio", publicado: false, url: "")

# Servicio - Tasa del dollar
s = Servicio.create(nombre: "Tasa del dollar", descripcion: "Tasa del oficial según el Banco Central", publicado: false, url: "")
