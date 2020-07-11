class AddPublicSpeakerAssociationToPublisher < ActiveRecord::Migration[6.0]
  def change
    add_reference :publishers, :public_speaker, index: true
  end
end
