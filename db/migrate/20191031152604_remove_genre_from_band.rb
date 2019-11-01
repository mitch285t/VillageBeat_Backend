class RemoveGenreFromBand < ActiveRecord::Migration[6.0]
  def change

    remove_column :bands, :Genre, :string
  end
end
