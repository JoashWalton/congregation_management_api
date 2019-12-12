class CreatePublishers < ActiveRecord::Migration[6.0]
  def change
    create_table :publishers do |t|
      t.boolean :baptized
      t.date :baptism_date
      t.boolean :other_sheep
      t.boolean :anointed

      t.timestamps
    end
  end
end
