class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.text :name
      t.date :date
      t.text :location
      t.integer :host_id

      t.timestamps
    end
  end
end
