# Servicio
s = Servicio.create(nombre: "Dias feriados", descripcion: "Dias feriados según el Ministerio de Trabajo", publicado: true, url: "")

# Metodos
Detalle.create(descripcion: "Todos los dias feriados correspondiente al año. Recibe como parametro el año. En caso de que se mueva se incluye la nueva fecha.", verbo:"Get", url: "v1/feriados/2014", formato_json: true, formato_xml: true, formato_csv: true, formato_xls: true, servicio_id: s.id)

# Data
feriados_list = [
	["1/1/2014", "", "Dia de año nuevo"],
	["6/1/2014","", "Dia de los Santos Reyes"],
	["21/1/2014","", "Dia de la Altagracia"],
	["26/1/2014","", "Dia de Duarte"],
	["27/2/2014","", "Dia de la Independencia"],
	["18/4/2014","", "Viernes Santo"],
	["1/5/2014","05/05/2014", "Dia del Trabajo"],
	["19/6/2014","", "Corpus Cristi"],
	["16/8/2014","", "Dia de la Restauración"],
	["24/9/2014","", "Dia de las Mercedes"],
	["6/11/2014","10/11/2014", "Dia de la Constitución"],
	["25/12/2014","", "Dia de Navidad"]
]

feriados_list.each do |original, movido, mot|
	Feriado.create(fecha_original: original, fecha_movido: movido, motivo: mot)
end