require 'rails_helper'


RSpec.feature "LoanBikes", type: :feature do
  before do
    5.times do 
      create(:bike)
      create(:person)
    end
  end

  scenario 'can create a loan' do
    sign_in

    click_on "New bike loan"
    loan = attributes_for(:loan)

    click_on "Select bike(s)"
    click_on "Borrow"

    click_on "Select borrower"
    click_on "New person"

    borrower = attributes_for(:person)
    fill_in "Name", with: borrower.name
    fill_in "Phone", with: borrower.phone
    fill_in "Email", with: borrower.email
    click_on "Add this lovely person"

    fill_in "Contribution notes", with: loan.contribution_notes
    click_on "Away you go, Happy biking!"
    expect(Loans.all.size).to eq 1
  end
end
