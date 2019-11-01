class Band < ApplicationRecord
    has_many :shows
    has_many :venues, through: :shows
    has_many :bandgenres
    has_many :genres, through: :bandgenres 
    has_many :user_bands
    has_many :users, through: :user_bands
end
