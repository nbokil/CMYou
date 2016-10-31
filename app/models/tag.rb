class Tag < ActiveRecord::Base

	# Relationships
  has_many :org_tags

  # Scopes
  scope :alphabetical,  -> { order(:name) }
  scope :for_interest, ->(interest) { where(name: interest) }

  #Validations
  validates_presence_of :name

end
