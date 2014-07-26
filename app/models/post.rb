class Post < ActiveRecord::Base
  belongs_to :board
  has_one :user
  has_many :replies
end
