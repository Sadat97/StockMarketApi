class AddMoneyAmountToPortofolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portofolios, :invested_amount, :integer
    add_column :portofolios, :last_price , :integer
    #Ex:- :default =>''
  end
end
