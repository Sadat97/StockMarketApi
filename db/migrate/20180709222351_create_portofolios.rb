class CreatePortofolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portofolios do |t|

      t.timestamps
    end
  end
end
