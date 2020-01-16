class AddPoBoxAttributesToContactInformations < ActiveRecord::Migration[6.0]
  def change
    add_column :contact_informations, :theocratic_email, :string
    add_column :contact_informations, :post_office_box_number, :string
    add_column :contact_informations, :post_office_box_city, :string
    add_column :contact_informations, :post_office_box_state, :string
    add_column :contact_informations, :post_office_box_zip_code, :string
  end
end
