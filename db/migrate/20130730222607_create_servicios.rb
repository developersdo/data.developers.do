class CreateServicios < ActiveRecord::Migration[7.1]
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.text :descripcion
      t.boolean :publicado
      t.string :url

      t.timestamps
    end
  end
end
