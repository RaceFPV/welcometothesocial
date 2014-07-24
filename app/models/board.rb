class Board < ActiveRecord::Base
  has_many :users
  has_many :posts
  validates :name, uniqueness: true
  
    # Override default find method to use slug rather than id
  def self.find(name)
    find_by_name(name)
  end

  # Change default param for board from id to slug
  def to_param
    name
  end
end
