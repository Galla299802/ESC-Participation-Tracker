class AddEventsReal < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string "EventName"
      t.datetime "Date"
      t.string "Location"

      t.timestamps
    end
  end
end
