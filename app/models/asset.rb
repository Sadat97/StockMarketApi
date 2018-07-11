class Asset < ApplicationRecord
   # belongs_to :portofolio

   #Validating 
  

   validates_presence_of :name
   validates_presence_of :price
end
