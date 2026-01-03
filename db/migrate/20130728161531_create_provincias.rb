class CreateProvincias < ActiveRecord::Migration[7.1]
  def change
    create_table :provincias do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
