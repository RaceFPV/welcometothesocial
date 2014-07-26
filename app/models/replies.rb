class Replies < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  def self.getreplycount(post)
    Replies.where('post_id == ? AND content != ?', post, "NULL").count
  end
end
