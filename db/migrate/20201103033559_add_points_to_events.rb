class AddPointsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :point_value, :integer, default: 0
  end
end
