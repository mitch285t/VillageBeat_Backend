class AddGenreIdToBand < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :genre_id, :integer
  end
end
