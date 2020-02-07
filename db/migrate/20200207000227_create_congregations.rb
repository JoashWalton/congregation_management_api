class CreateCongregations < ActiveRecord::Migration[6.0]
  def change
    create_table :congregations do |t|
      t.string :name
      t.string :congregation_number

      t.timestamps
    end
  end
end
