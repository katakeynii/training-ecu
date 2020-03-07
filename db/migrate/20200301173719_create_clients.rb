class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :numero_telephone
      t.string :email

      t.timestamps
    end
  end
end
