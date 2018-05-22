class Admin < ApplicationRecord

  has_secure_password
  has_secure_token :auth_token
  validates_uniqueness_of :username


  validates :firstname, presence: true
  validates :middlename, presence: true
  validates :lastname, presence: true
  validates :subject, presence: true
  validates :classes, presence: true
  validates :username, presence: true
  validates :password, presence: true


end
