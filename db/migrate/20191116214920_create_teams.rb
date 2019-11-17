class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.integer :division_id
      t.integer :conference_id

      t.timestamps
    end
  end
end
