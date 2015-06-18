class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :color
      t.integer :count
      t.string :tag

      t.timestamps null: false
    end
  end
end
