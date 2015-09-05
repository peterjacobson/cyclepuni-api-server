class Bike < ActiveRecord::Base
  has_many :bike_loans
  has_many :loans, through: :bike_loans
end
