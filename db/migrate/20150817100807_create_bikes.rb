class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :photo
      t.string :name
      t.string :description
      t.string :size

      t.timestamps null: false
    end
  end
end
