class AddEmailToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :varchar
  end
end
