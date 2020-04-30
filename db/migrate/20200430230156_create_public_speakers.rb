class CreatePublicSpeakers < ActiveRecord::Migration[6.0]
  def change
    create_table :public_speakers do |t|

      t.timestamps
    end
  end
end
