class AddColumnToCommandes < ActiveRecord::Migration[6.0]
  def change
    add_column :commandes, :nom_livreur, :string
  end
end
