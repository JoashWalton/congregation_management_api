# Publisher Model
#
# Attributes and Data Type
# baptized - boolean for being baptized... obviously
# baptism_date  - date of baptism, month day and year
# unbaptized - boolean for having qualified as an unbaptized publisher
# unbaptized_date - date having qualified as an unbaptized publisher
# other_sheep - boolean for being identified as one of the other sheep
# anointed - boolean for one identiftying themselves as one of the anointed
# enrolled_in_school - boolean for one enrolled in school
# school_enrollment_date - date one was enrolled in the school
class Publisher < ApplicationRecord
  belongs_to :soul
end
