class AddPointsToRewards < ActiveRecord::Migration[6.0]
  def change
    add_column :rewards, :point_value, :integer, default: 0
  end
end
