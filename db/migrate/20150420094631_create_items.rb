class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :link
      t.integer :prio, default: 0

      t.timestamps null: false
    end
  end
end
