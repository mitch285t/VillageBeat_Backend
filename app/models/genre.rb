class Genre < ApplicationRecord
    has_many :bandgenres
    has_many :bands, through: :bandgenres
end
