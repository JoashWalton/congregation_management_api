# Publisher Model
#
# Attributes and Data Type
# baptized - boolean for being baptized... obviously
# baptism_date  - date of baptism, month day and year
# other_sheep - boolean for being identified as one of the other sheep
# anointed - boolean for one identiftying themselves as one of the anointed
class Publisher < ApplicationRecord
    belongs_to :soul
end
