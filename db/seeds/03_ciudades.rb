# Servicio
s = Servicio.create(nombre: "Ciudades", descripcion: "Ciudades y secciones con los municipios a los que pertecenen", publicado: false, url: "")

# Metodos
Detalle.create(descripcion: "Listado completo de todas las ciudades.", verbo:"Get", url: "v1/ciudades", formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)
Detalle.create(descripcion: "Detalle de una Ciudad en especifico. Recibe como parametro el ID de la Ciudad e incluye el municipio al que pertenece.<br><br>
			<span class='text-muted'>Ejemplo:</span>
			<code>
				<pre>
{
	id: 1,
	nombre: 'Santo Domingo',
	municipio_id: 1,
	created_at: '2013-09-09T21:00:47.412Z',
	updated_at: '2013-09-09T21:00:47.412Z',
	municipio: {
		id: 1,
		nombre: 'DISTRITO NACIONAL',
		provincia_id: 1,
		created_at: '2013-09-09T21:00:45.473Z',
		updated_at: '2013-09-09T21:00:45.473Z'
	}
}
				</pre>
			</code>", verbo:"Get", url: "v1/ciudades/3", formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)


ciudades_list = [
	[1,"Santo Domingo",1]
]

ciudades_list.each do |id, name, municipio_id|
	Ciudad.create(id: id, nombre: name, municipio_id: municipio_id)
end