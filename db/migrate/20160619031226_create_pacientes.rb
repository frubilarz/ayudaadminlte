class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.integer :edad
      t.integer :rut
      t.date :fecha_nacimiento

      t.timestamps null: false
    end
  end
end
