class CreateUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :updates do |t|
      t.integer :player_id
      t.text :news
      t.datetime :release_time

      t.timestamps
    end
  end
end
