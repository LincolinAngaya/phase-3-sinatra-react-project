class AddAdminIdToRestaraunts < ActiveRecord::Migration[6.1]
  def change
    add_column :restaraunts, :admin_id, :integer
  end
end
