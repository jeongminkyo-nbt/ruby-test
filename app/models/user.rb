class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest
  validates :email, presence: true
  validates :name, presence: true
  validates :password_digest, presence: true
end
