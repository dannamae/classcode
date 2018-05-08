class Admin < ApplicationRecord
  validates :firstname, presence: true
  validates :middlename, presence: true
  validates :lastname, presence: true
  validates :subject, presence: true
  validates :classes, presence: true
  validates :username, presence: true
  validates :password, presence: true
end
