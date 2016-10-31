class Commitment < ActiveRecord::Base

	# Relationships
  belongs_to :student
  belongs_to :organization

end
