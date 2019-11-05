class RemoveprofilepicFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :profilepic, :string
  end
end
