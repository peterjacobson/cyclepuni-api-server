class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.date :date_due
      t.string :contribution_status
      t.string :contribution_notes
      t.string :loan_status

      t.timestamps null: false
    end
  end
end
