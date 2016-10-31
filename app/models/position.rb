class Position < ActiveRecord::Base

	# Relationships
  belongs_to :organization

  # Scopes
  scope :alphabetical,  -> { order(:name) }

  #Validations
  validates_presence_of :name, :hour_commitment
  validates_numericality_of :hour_commitment, greater_than_or_equal_to: 0

end
