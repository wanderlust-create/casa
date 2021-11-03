class AddSmsNotificationsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :sms_notifications, :boolean
  end
end
