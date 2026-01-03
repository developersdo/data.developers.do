class CreateFeriados < ActiveRecord::Migration[7.1]
  def change
    create_table :feriados do |t|
      t.date :fecha_original
      t.date :fecha_movido
      t.string :motivo

      t.timestamps
    end
  end
end
