require 'rails_helper'

RSpec.describe Loan, type: :model do
	it {should have_many(:bikes)}
	it {should have_one(:person)}
  
end
