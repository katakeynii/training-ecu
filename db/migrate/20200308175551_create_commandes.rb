class CreateCommandes < ActiveRecord::Migration[6.0]
  def change
    create_table :commandes do |t|
      t.integer :total
      t.datetime :date_commande
      t.datetime :date_livraison
      t.boolean :etat_livraison
      t.string :code
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
