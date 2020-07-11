class PublicSpeaker < ApplicationRecord
  belongs_to :congregation
  belongs_to :publisher
end
