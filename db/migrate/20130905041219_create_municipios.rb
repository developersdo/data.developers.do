class CreateMunicipios < ActiveRecord::Migration[7.1]
  def change
    create_table :municipios do |t|
      t.string :nombre
      t.references :provincia, index: true

      t.timestamps
    end
  end
end
