class AddProfileIdToPortofolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portofolios, :profile_id, :integer
  end
end
