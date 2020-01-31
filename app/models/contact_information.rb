# Contact Information Model
#
# Attributes and Data Type
# mailing_address - string, literal door number and street - '1790 East Fard Road 89'
# apartment - string for apartment information - 'A2', 'D-100', etc
# mailing_city - city for mailing address
# mailing_state - state for mailing address
# mailing_zip_code - postal code for mailing address
# country - country of phyicial residence
# home_phone_number 
# mobile_phone_number
# personal_email
# theocratic_email
# post_office_box_number
# post_office_box_city
# post_office_box_state
# post_office_box_zip_code
# publisher_id
class ContactInformation < ApplicationRecord
  belongs_to :publisher
end
