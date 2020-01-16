class RenameEmailMailingAndPoBoxAddressColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :contact_informations, :address, :mailing_address
    rename_column :contact_informations, :city, :mailing_city
    rename_column :contact_informations, :state, :mailing_state
    rename_column :contact_informations, :zipcode, :mailing_zip_code
    rename_column :contact_informations, :email, :personal_email
  end
end
