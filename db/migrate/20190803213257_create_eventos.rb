class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.string :titulo_evento
      t.string :data
      t.string :hora
      t.string :local
      t.string :vagas
      t.text :descricao

      t.timestamps
    end
  end
end
