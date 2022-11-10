class AddLicenceToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :licence, :varchar
  end
end
