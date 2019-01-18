class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.belongs_to :requestor, class_name:"User"
      t.belongs_to :requestee, class_name:"User"
      t.date :date
      t.float :amount
      t.integer :requestor_id
      t.integer :requestee_id
      t.text :message
      t.text :status

      t.timestamps
    end
  end
end
