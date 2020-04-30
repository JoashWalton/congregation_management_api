class AddPublicSpeakerAssociationToCongregation < ActiveRecord::Migration[6.0]
  def change
    add_column :public_speakers, :congregation_id, :integer
    add_index 'public_speakers', ['congregation_id'], :name => 'index_public_speakers_with_congregation_id' 
  end
end
