class AddDescriptionToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :Description, :string
  end
end
