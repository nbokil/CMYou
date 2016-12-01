class Interest < ActiveRecord::Base

	# Relationships
  belongs_to :student

  # Scopes
  scope :alphabetical,  -> { order(:name) }
  scope :get_interests, ->(sid) { where(student_id: sid)}
  #Validations
  validates_presence_of :name

end
