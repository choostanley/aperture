class AddAvatarsToUsers < ActiveRecord::Migration[5.1]
  def change
  	  add_column :users, :avatar, :json
  end
end
