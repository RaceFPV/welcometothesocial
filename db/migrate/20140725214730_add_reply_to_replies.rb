class AddReplyToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :reply, :integer
  end
end
