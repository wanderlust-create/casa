class AddEmailNotificationsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email_notifications, :boolean
  end
end
