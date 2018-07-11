class AddCol < ActiveRecord::Migration[5.2]
  def change
    add_column :portofolios, :stock_name, :string
     
  end
end
