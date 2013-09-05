class CreateDetalles < ActiveRecord::Migration
  def change
    create_table :detalles do |t|
      t.text :descripcion
      t.string :verbo
      t.string :url
      t.boolean :formato_json
      t.boolean :formato_xml
      t.boolean :formato_csv
      t.boolean :formato_xls
      t.references :servicio, index: true

      t.timestamps
    end
  end
end
