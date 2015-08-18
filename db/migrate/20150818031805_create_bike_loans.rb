class CreateBikeLoans < ActiveRecord::Migration
  def change
    create_table :bike_loans do |t|
    	t.belongs_to :bike, index: true
    	t.belongs_to :loan, index: true
      t.timestamps null: false
    end
  end
end
