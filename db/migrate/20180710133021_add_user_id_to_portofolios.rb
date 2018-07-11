class AddUserIdToPortofolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portofolios, :user_id, :integer
    add_column :portofolios, :assest_id, :integer ,array: true,default: '{}'
    
  end
end
