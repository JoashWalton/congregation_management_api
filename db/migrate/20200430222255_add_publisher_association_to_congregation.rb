class AddPublisherAssociationToCongregation < ActiveRecord::Migration[6.0]
  def change
    add_column :publishers, :congregation_id, :integer
    add_index 'publishers', ['congregation_id'], :name => 'index_congregation_id' 
  end
end
