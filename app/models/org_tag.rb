class OrgTag < ActiveRecord::Base

	# Relationships
  belongs_to :tag
  belongs_to :organization

  scope :for_tag, ->(category) { where(category: category) }

end
