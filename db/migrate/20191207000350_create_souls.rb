class CreateSouls < ActiveRecord::Migration[6.0]
  def change
    create_table :souls do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birth_date
      t.string :unique_identifier

      t.timestamps
    end
  end
end
