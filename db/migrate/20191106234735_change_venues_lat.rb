class ChangeVenuesLat < ActiveRecord::Migration[6.0]
  def change
    change_column :venues, :lat, :float
  end
end
