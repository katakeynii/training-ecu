class CreateParfums < ActiveRecord::Migration[6.0]
  def change
    create_table :parfums do |t|
      t.string :name

      t.timestamps
    end
  end
end
