class User < ApplicationRecord
    
    has_many :user_bands 
    has_many :bands, through: :user_bands
    has_secure_password




    
      
end
