class ChangeName < ActiveRecord::Migration[5.2]
  def change
    rename_column :portofolios, :assest_id, :asset_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
