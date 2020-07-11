class CreateKingdomHalls < ActiveRecord::Migration[6.0]
  def change
    create_table :kingdom_halls do |t|
      t.string :address
      t.integer :auditorium_count

      t.timestamps
    end
  end
end
