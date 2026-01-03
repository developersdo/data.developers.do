# Servicio
s = Servicio.create(nombre: 'Provincias',
                    descripcion: 'Las provincias que componen la República Dominicana con sus respectivos codigos y descripciones', publicado: true, url: '')

# Metodos
Detalle.create(descripcion: 'Listado completo de todas las provincias.', verbo: 'Get', url: 'v1/provincias',
               formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)
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
			</code>", verbo: 'Get', url: 'v1/provincias/1', formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)
Detalle.create(descripcion: 'Todos los municipios que pertenecen a una provincia.', verbo: 'Get',
               url: 'v1/provincias/2/municipios', formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)

# Data
provincias_list = [
  [1, 'Distrito Nacional'],
  [2, 'Altagracia'],
  [3, 'Azua'],
  [4, 'Bahoruco'],
  [5, 'Barahona'],
  [6, 'Dajabon'],
  [7, 'Duarte'],
  [8, 'El Seybo'],
  [9, 'Elias Piña'],
  [10, 'Espaillat'],
  [11, 'Hato Mayor'],
  [12, 'Independencia'],
  [13, 'La Romana'],
  [14, 'La Vega'],
  [15, 'Maria Trinidad Sanchez'],
  [16, 'Monseñor Nouel'],
  [17, 'Montecristi'],
  [18, 'Monte Plata'],
  [19, 'Pedernales'],
  [20, 'Peravia'],
  [21, 'Puerto Plata'],
  [22, 'Hermanas Mirabal'],
  [23, 'Samana'],
  [24, 'San Cristobal'],
  [25, 'San Juan'],
  [26, 'San Pedro de Macoris'],
  [27, 'Sanchez Ramirez'],
  [28, 'Santiago de los Caballeros'],
  [29, 'Santiago Rodriguez'],
  [30, 'Valverde'],
  [31, 'San Jose de Ocoa'],
  [32, 'Santo Domingo']
]

provincias_list.each do |id, name|
  Provincia.find_or_create_by(id: id, nombre: name)
end
