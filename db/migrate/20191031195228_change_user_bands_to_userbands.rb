class ChangeUserBandsToUserbands < ActiveRecord::Migration[6.0]
  def change
    rename_table :user_bands, :userbands
  end
end
