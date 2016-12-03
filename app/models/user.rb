class User < ActiveRecord::Base

  # Use built-in rails support for password protection
  has_secure_password

  # Relationships
  has_one :student
  has_many :favorites
  has_many :favorite_organizations, through: :favorites, source: :favorited, source_type: 'Organization'

  # Validations
  validates :username, presence: true, uniqueness: { case_sensitive: false}
  #validates_format_of :username, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, message: "must be valid andrew email"
  validates :role, inclusion: { in: %w[admin student ra], message: "is not a recognized role in system" }
  validates_presence_of :password, on: :create 
  validates_presence_of :password_confirmation, on: :create 
  validates_confirmation_of :password, on: :create, message: "does not match"
  validates_length_of :password, minimum: 4, message: "must be at least 4 characters long", allow_blank: true

  # Scopes
  scope :active,       -> { where(active: true) }
  scope :inactive,     -> { where(active: false) }
  scope :by_role,      -> { order(:role) }
  scope :alphabetical, -> { order(:username) }

  # For use in authorizing with CanCan
  ROLES = [['Administrator', :admin],['Student', :student],['RA', :ra]]

  def role?(authorized_role)
    return false if role.nil?
    role.downcase.to_sym == authorized_role
  end

  # Callbacks
 # before_destroy :is_never_destroyable

end
