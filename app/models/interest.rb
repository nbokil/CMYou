class Interest < ActiveRecord::Base

	# Relationships
  belongs_to :student

  # Scopes
  scope :alphabetical,  -> { order(:name) }

  #Validations
  validates_presence_of :name

end
