class CreateChecklistItems < ActiveRecord::Migration
  def change
    create_table :checklist_items do |t|
      t.integer :checklist_id
      t.string :name
      t.integer :price
      t.boolean :checked

      t.timestamps
    end
    add_index :checklist_items, :checklist_id
  end
end
