class Tag < ActiveRecord::Base

	# Relationships
  has_many :org_tags

  # Scopes
  scope :alphabetical,  -> { order(:name) }

  #Validations
  validates_presence_of :name

end
