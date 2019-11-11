class AddDescToBand < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :desc, :string
  end
end
