class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.belongs_to :person, index: true

      t.date :date_due
      t.string :contribution_status
      t.string :contribution_notes
      t.date :date_returned
      t.string :helmet
      t.string :lock

      t.belongs_to :person, index: true

      t.timestamps null: false
    end
  end
end
