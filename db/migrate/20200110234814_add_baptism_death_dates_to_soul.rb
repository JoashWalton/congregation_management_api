class AddBaptismDeathDatesToSoul < ActiveRecord::Migration[6.0]
  def change
    add_column :souls, :baptism_date, :date
    add_column :souls, :death_date, :date
  end
end
