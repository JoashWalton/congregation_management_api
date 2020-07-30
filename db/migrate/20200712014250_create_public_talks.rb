class CreatePublicTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :public_talks do |t|
      t.integer :number
      t.string :public_talk_title
      t.string :public_talk_note
      t.date :revision_date
      t.string :file_pdf_url
      t.string :file_doc_url

      t.timestamps
    end
  end
end
