class CreatePublicTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :public_talks do |t|
      t.integer :public_talk_number
      t.string :public_talk_title
      t.string :public_talk_subject

      t.timestamps
    end
  end
end
