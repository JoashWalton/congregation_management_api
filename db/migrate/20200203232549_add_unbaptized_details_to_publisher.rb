class AddUnbaptizedDetailsToPublisher < ActiveRecord::Migration[6.0]
  def change
    add_column :publishers, :unbaptized, :boolean
    add_column :publishers, :unbaptized_date, :datetime
  end
end
