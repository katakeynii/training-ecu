class CreateChoixes < ActiveRecord::Migration[6.0]
  def change
    create_table :choixes do |t|
      t.integer :quantite
      t.integer :total
      t.references :glace, null: false, foreign_key: true
      t.references :commande, null: false, foreign_key: true

      t.timestamps
    end
  end
end
