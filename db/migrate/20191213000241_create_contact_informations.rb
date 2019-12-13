class CreateContactInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_informations do |t|
      t.string :address
      t.string :apartment
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.string :home_phone_number
      t.string :mobile_phone_number
      t.string :email

      t.timestamps
    end
  end
end
