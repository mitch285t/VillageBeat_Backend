class ChangeVenuesLng < ActiveRecord::Migration[6.0]
  def change
    change_column :venues, :lng, :float
  end
end
