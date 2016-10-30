class Student < ActiveRecord::Base
  
  # Relationships
  has_many :commitments
  has_many :interests
  belongs_to :user

  #array for Enumerated Values
  GENDER_LIST = [['Male', 'Male'], ['Female', 'Female'], ['Not Specified', 'Not Specified']]

  # Allow user to be nested within customer
  accepts_nested_attributes_for :user, reject_if: ->(user) { user[:username].blank? }, allow_destroy: true

  # Scopes
  scope :alphabetical,  -> { order(:last_name).order(:first_name) }
  scope :active,        -> { where(active: true) }
  scope :inactive,      -> { where(active: false) }
  scope :for_dorm, ->(dorm) { where(dorm: dorm) }
  
  # Validations
  validates_presence_of :last_name, :first_name
  validates_inclusion_of :gender, in: GENDER_LIST.map{|key, value| value}, message: "is not a valid option"

  # Callbacks
  #before_update :deactive_user_if_customer_inactive
  #before_destroy :is_never_destroyable

  # Other methods
  def name
    "#{last_name}, #{first_name}"
  end

  def proper_name
    "#{first_name} #{last_name}"
  end

end
