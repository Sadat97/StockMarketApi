class Portofolio < ApplicationRecord
    has_many :assets
    has_many :users
    belongs_to :user

    validates_presence_of :user_id
    validates_presence_of :asset_id
    validates_presence_of :profile_id
    validates_presence_of :invested_amount
    

end
