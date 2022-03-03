class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nickname, :string, :limit => 15, null: false
    add_column :users, :post_code, :string, :limit => 7
    add_column :users, :home_address, :string, :limit => 100
    add_column :users, :personal_introduction, :string, :limit => 500
  end
end
