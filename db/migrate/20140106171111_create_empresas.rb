class CreateEmpresas < ActiveRecord::Migration[7.1]
  def change
    create_table :empresas do |t|
      t.string :rnc
      t.string :nombre

      t.timestamps
    end
  end
end
