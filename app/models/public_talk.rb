# frozen_string_literal: true

# Class that represents a collection of talk titles and corresponding data for each outline.
# Attributes:
# number - Integer, number of the outline
# public_talk_title - String, title of the outline
# public_talk_note - String, note from the outline
# revision_date - Date, month and year of outline revision
# file_pdf_url - String, location of outline as a pdf
# file_doc_url - String, location of outline as a doc

class PublicTalk < ApplicationRecord
  S99_PUBLIC_TALK_TITLES_PDF = 'congregation_management_api/storage/S-99-E.pdf'

  S99a_TALKS_BY_SUBJECT = {
    "Bible/God": [
      4, 26, 37, 54, 76, 80, 88, 99, 100, 101, 114, 124, 133, 137, 139, 145, 164, 169, 175, 187
    ],
    "Christian Standards/Qualities": [
      7, 10, 12, 14, 15, 48, 68, 69, 72, 77, 78, 103, 112, 144, 148, 157, 165, 171, 185
    ],
    "Evangelizing/Ministry": [
      17, 63, 66, 81
    ],
    "Faith/Spirituality": [
      1, 9, 16, 18, 22, 31, 39, 46, 67, 70, 71, 74, 87, 142, 147, 149, 151, 158, 159, 166, 68, 172, 188, 189, 192
    ],
    "Family/Youth": [
      5, 13, 27, 28, 29, 30, 104, 110, 113, 118, 146, 190
    ],
    "Kingdom/Paradise": [
      19, 21, 23, 24, 35, 42, 44, 47, 49, 60, 61, 62, 75, 85, 90, 91, 109, 111, 120, 122, 130, 132, 154, 162, 170, 174, 180, 182
    ],
    "Last Days/God's Judgement": [
      2, 6, 20, 34, 38, 40, 41, 84, 93, 98, 102, 106, 108, 121, 150, 152, 153, 156, 176, 181, 193
    ],
    "Religion/Worship": [
      3, 8, 36, 43, 45, 52, 55, 56, 58, 82, 83, 86, 89, 92, 94, 95, 96, 125, 126, 127, 128, 129, 134, 135, 136, 140, 155, 161, 163, 173
    ],
    "Trials/Problems": [
      32, 50, 57, 65, 73, 105, 117, 141, 143, 177, 184, 186, 194
    ],
    "World, No Part Of": [
      11, 33, 51, 53, 59, 64, 79, 97, 107, 115, 116, 119, 123, 131, 138, 160, 167, 178, 179, 183, 191
    ]
  }

  has_one_attached :s99_public_talk_titles_pdf
  has_one_attached :s99_public_talk_subjects_pdf
  has_many_attached :public_talk_pdf_outlines
  has_many_attached :public_talk_doc_outlines

  def self.process_public_talk_titles
    read_s99 = PDF::Reader.new(S99_PUBLIC_TALK_TITLES_PDF)
    read_s99.pages.each do |page|
      # Remove newlines, strip whitespace off titles, remove the document label, retunr array of arrays
      captured_outlines = page.text.delete!("\n").strip.gsub('S-99-E   10/18', '').scan(/(\d*)[.]\s(\D*)/)
      captured_outlines.each do |capture|
        # need to remove introductory paragrpah on page 1, no number!
        unless capture[0].to_i > 0 
          PublicTalk.new number: capture[0].to_i, public_talk_title: capture[1]
        end
      end
    end
  end
end
