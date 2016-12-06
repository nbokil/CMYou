class Organization < ActiveRecord::Base

	# Relationships
  has_many :commitments
  has_many :positions
  has_many :org_tags
  has_many :tags, through: :org_tags

  # Scopes
  scope :alphabetical,  -> { order(:name) }
  scope :for_org, ->(org) { where(id: org) }

  #Validations
  validates_presence_of :name


end
