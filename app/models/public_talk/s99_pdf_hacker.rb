# frozen_string_literal: true 

module PublicTalk
  class S99PdfHacker
    # Temporary resting spot for implementaion
    local_titles_file = '/Users/jw/dev/scripts/s99_pdf_hacker/S-99-E.pdf'
    local_subjects_file = '/Users/jw/dev/scripts/s99_pdf_hacker/S-99a-E.pdf'

    # Regex for talk number and talk title lines
    TALK_NUMBER_TITLE_REGEX = /\A.\s*\d{1,2}.\s/

    # Regex for talk number
    TALK_NUMBER_REGEX = /.\s*(\d*).\s(.*)/

    # Regex for talk title
    TALK_TITLE_REGEX = /.\s*(\d*).\s(.*)/

    # Manually created due to regex overwhelimg...
    talk_subject_mapping = {
      'Bible/God': %w[
        4 26 37 54 76 80 88 99 100 101 114 124 133 137 139 145 164 169 175 187
      ],
      'Christian Standards/Qualities': %w[
        7 10 12 14 15 48 68 69 72 77 78 103 112 144 148 157 165 171 185
      ],
      'Evangelizing/Ministry': %w[17 63 66 81],
      'Faith/Spirituality': %w[],
      'Family/Youth': [],
      'Kingdom/Paradise': [],
      'Last Days/God\'s Judgement': [],
      'Religion/Worship': [],
      'Trials/Problems': [],
      'World, No Part Of': []
    }

    

    # attr_accessorto access without @ in class
    attr_accessor :public_talk_number
    attr_accessor :public_talk_title
    attr_accessor :public_talk_subject

    talks_array = []

    def initialize()

    end

    # Method will rip though the S99 title pdf anf collect talk numbers and titles.
    # Will return an array if arrays of talk numbers and titles, that way we can add 
    # subjet later before writing to database.
    def hack_the_titles_pdf
      read_data = PDF::Reader.new(local_titles_file)
      pdf_page_count = read_data.page_count

      pdf_page_count.times do |iteration|
        next if iteration == 0 # 0 based iteration is useless
        page_text = read_data.page(iteration).text
        page_text.lines.each do |line|
          if TALK_NUMBER_TITLE_REGEX.match?(line)
            talk_number = TALK_NUMBER_REGEX.match(line)[1].to_i
            talk_title = TALK_TITLE_REGEX.match(line)[2]
            paired_data = [talk_number, talk_title]
            talks_array << paired_data
          end
        end
      end
    end

    def hack_subjects_pdf
      read_data = PDF::Reader.new(local_titles_file)
      pdf_page_count = read_data.page_count
    end
  end
end
