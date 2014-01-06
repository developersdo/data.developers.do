class CreateCiudades < ActiveRecord::Migration
  def change
    create_table :ciudades do |t|
      t.string :nombre
      t.references :municipio

      t.timestamps
    end
  end
end
