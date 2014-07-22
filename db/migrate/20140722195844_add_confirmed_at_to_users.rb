class AddConfirmedAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :confirmedAt, :datetime
    add_column :users, :confirmationSentAt, :datetime
    add_column :users, :confirmationToken, :string
    add_column :users, :unconfirmed_email, :string
  end
end
