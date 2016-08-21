class User < ActiveRecord::Base
  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  validates_presence_of :first_name
  validates_length_of :first_name, :maximum => 255
  validates_presence_of :last_name
  validates_length_of :last_name, :maximum => 255
  validates_presence_of :email_id
  validates_length_of :email_id, :maximum => 255
  validates_uniqueness_of :email_id
  validates_format_of :email_id, :with => EMAIL_REGEX
  validates_presence_of :password
  validates_length_of :password, :maximum => 255
  validates_confirmation_of :password
end
