class CreateFieldServiceGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :field_service_groups do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
