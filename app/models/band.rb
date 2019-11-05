class Band < ApplicationRecord
    has_many :shows
    has_many :venues, through: :shows
    has_many :bandgenres
    has_many :genres, through: :bandgenres 
    has_many :userbands
    has_many :users, through: :userbands
end
