require 'rails_helper'
require 'spec_helper'
require 'devise'

RSpec.feature "HomePages", type: :feature do
  scenario 'Admin can log in and see dashboard ' do
    admin = FactoryGirl.create(:admin)
    visit root_path
    click_on "Admin sign in"
    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password
    click_on "Log in"

    expect(page).to have_content "New Loan"
    expect(page).to have_content "Return bike"
  end

end
