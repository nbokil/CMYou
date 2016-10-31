class Organization < ActiveRecord::Base

	# Relationships
  has_many :commitments
  has_many :positions
  has_many :org_tags

  # Scopes
  scope :alphabetical,  -> { order(:name) }

  #Validations
  validates_presence_of :name

  #need to figure out how to handle Youtube video display
  
end
