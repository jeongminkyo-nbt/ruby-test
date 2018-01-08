class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  validates :title, presence: true
  validates :content, presence: true
end
