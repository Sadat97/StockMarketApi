class FixPg < ActiveRecord::Migration[5.2]
  def change
    remove_column :portofolios, :asset_id
    add_column :portofolios, :asset_id, :integer, default: [].to_yaml
  end
end
