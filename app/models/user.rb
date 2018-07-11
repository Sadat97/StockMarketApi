class User < ApplicationRecord
    has_many :portofolio

    validates_presence_of :name
end
