class RemovePicFromBand < ActiveRecord::Migration[6.0]
  def change

    remove_column :bands, :Pic, :string
  end
end
