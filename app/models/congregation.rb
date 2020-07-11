class Congregation < ApplicationRecord
  has_many :publishers
  has_many :public_speakers
end
