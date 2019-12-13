class AddGenderToSoul < ActiveRecord::Migration[6.0]
  def change
    add_column :souls, :gender, :string
  end
end
