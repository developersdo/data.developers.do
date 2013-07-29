# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

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