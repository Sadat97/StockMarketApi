class AddUserIdToPortofolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portofolios, :user_id, :integer
    add_column :portofolios, :assest_id, :integer ,array: true,default: '{}'
    add_foreign_key :portofolios, :users
    add_foreign_key :portofolios, :assets
  end
end
