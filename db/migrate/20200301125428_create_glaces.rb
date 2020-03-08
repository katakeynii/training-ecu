class CreateGlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :glaces do |t|
      t.string :name
      t.integer :prix
      t.text :description
      t.integer :nb_boule

      t.timestamps
    end
  end
end
