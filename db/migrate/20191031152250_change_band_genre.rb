class ChangeBandGenre < ActiveRecord::Migration[6.0]
  def change
    change_column :bands, :genre, :integer
    
  end
end
