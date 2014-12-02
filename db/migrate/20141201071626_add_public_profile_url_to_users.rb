class AddPublicProfileUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :public_profile_url, :string
  end
end
