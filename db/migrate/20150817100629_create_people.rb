class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :search_string

      t.timestamps null: false
    end
  end
end
