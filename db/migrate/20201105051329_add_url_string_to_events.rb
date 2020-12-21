class AddUrlStringToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :photoLink, :string
  end
end
