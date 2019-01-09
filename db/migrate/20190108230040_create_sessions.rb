class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.date :date
      t.text :location
      t.integer :hours
      t.float :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
