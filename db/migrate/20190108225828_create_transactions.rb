class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.belongs_to :sender, class_name:"User"
      t.belongs_to :recipient, class_name:"User"
      t.date :date
      t.float :amount
      t.integer :sender_id
      t.integer :recipient_id
      t.text :message

      t.timestamps
    end
  end
end
