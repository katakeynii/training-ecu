class CreateJoinTableParfumChoix < ActiveRecord::Migration[6.0]
  def change
    create_join_table :choixes, :parfums do |t|
      # t.index [:choix_id, :parfum_id]
      # t.index [:parfum_id, :choix_id]
    end
  end
end
