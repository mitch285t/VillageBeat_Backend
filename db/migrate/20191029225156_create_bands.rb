class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :Genre
      t.string :Pic
      t.integer :wallet

      t.timestamps
    end
  end
end
