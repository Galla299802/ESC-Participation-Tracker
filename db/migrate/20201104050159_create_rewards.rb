class CreateRewards < ActiveRecord::Migration[6.0]
  def change
    create_table :rewards do |t|
      t.string :EventName
      t.string :Location
      t.datetime :Date
      t.string :Description

      t.timestamps
    end
  end
end
