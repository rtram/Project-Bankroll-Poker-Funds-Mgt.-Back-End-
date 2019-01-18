class DropGames < ActiveRecord::Migration[5.2]
  def change
    drop_table :games
  end
end
