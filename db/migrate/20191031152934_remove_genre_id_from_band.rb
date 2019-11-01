class RemoveGenreIdFromBand < ActiveRecord::Migration[6.0]
  def change

    remove_column :bands, :genre_id, :integer
  end
end
