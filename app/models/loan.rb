class Loan < ActiveRecord::Base
	has_many :bike_loans
	has_many :bikes, through: :bike_loans
	belongs_to :person
end
