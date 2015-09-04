require 'rails_helper'
require 'spec_helper'
require 'devise'

RSpec.feature "HomePages", type: :feature do
  scenario 'Admin can log in and see dashboard ' do
    admin = FactoryGirl.create(:admin)
    visit root_path
    click_on "Admin Sign In"
    fill_field "email", admin.email
    fill_field "password", admin.password
    click_on "Go!"

    expect(page).to contain "New Loan"
    expect(page).to contain "Return bike"
  end
end
