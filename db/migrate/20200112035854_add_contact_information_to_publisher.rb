class AddContactInformationToPublisher < ActiveRecord::Migration[6.0]
  def change
    add_reference :contact_informations, :publisher, null: false, foreign_key: true
  end
end
