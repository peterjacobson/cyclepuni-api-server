require 'rails_helper'
require 'spec_helper'
require 'devise'

RSpec.feature "HomePages", type: :feature do
  scenario 'Admin can log in and see dashboard ' do
    sign_in
    expect(page).to have_content "loan"
    expect(page).to have_content "Return bike"
  end

  scenario 'Admin can log out' do
    sign_in
    click_on "Log out"
    expect(current_path).to eq root_path
  end
end
