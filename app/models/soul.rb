# Attributes: 
# first_name
# middle_name
# last_name
# birth_date
# unique_identifier - auto generated
# gender
# death_date
# baptism_date
class Soul < ApplicationRecord
  attr_readonly :unique_identifier

  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :birth_date, presence: true, allow_blank: false
  validates :gender, presence: true, allow_blank: false

  before_create :set_unique_identifier

  # For sanity in later times when this becaomes a crowded scene, and we have multiple John Smith's ,
  # we will assign a unique identifier to each unique soul - combination of all primary attributes of a 
  # soul - first and last name, a birth date, and a gender.
  #
  # @return [String] a unique string of alphanumeric characters 32 charactrs long
  def set_unique_identifier
    collective_souls = Soul.where(
      { first_name: first_name, last_name: last_name, birth_date: birth_date, gender: gender }
    ).all

    unless collective_souls.any?
      self.unique_identifier = SecureRandom.uuid 
    end
  end
end
