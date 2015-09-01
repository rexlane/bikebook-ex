class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :model
      t.integer :manufacturer_id

      t.timestamps null: false
    end
  end
end
