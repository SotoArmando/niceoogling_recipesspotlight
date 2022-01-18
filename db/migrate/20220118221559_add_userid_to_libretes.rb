class AddUseridToLibretes < ActiveRecord::Migration[7.0]
  def change
    add_column :libretes, :user_id, :integer
    add_column :histories, :user_id, :integer
    add_column :schedules, :user_id, :integer
  end
end
