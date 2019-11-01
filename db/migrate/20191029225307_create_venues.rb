class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :lat
      t.integer :lng

      t.timestamps
    end
  end
end
