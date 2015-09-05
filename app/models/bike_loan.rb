class BikeLoan < ActiveRecord::Base
  belongs_to :bike
  belongs_to :loan
end
