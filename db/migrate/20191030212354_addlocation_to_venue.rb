class AddlocationToVenue < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :location, :string
  end
end
