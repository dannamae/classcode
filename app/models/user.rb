class User < ApplicationRecord

  

  validates :studentnum, presence: true
  validates :firstname, presence: true
   validates :middlename, presence: true
  validates :lastname, presence: true
  validates :sectionname, presence: true
  validates :password_digest, presence: true


end
