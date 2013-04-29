class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :username, :password, :cohort_id, :admin #made accessible to test the app
  has_secure_password
  belongs_to :cohort
  has_many :attempts
  has_many :challenges, :through => :attempts
  has_many :interactive_attempts

  EMAIL_REGEX = /^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/


  before_create :downcase_email
  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true, :format => { :with => EMAIL_REGEX}
  validates :password, :presence => true

  private

  def downcase_email
    self.email = self.email.downcase
  end
end
