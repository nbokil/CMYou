class OrgTag < ActiveRecord::Base

	# Relationships
  belongs_to :tag
  belongs_to :organization

  scope :for_org, ->(tag) { where(tag_id: tag) }
end
