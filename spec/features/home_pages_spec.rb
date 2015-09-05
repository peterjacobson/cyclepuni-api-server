require 'rails_helper'
require 'spec_helper'
require 'devise'

RSpec.feature "HomePages", type: :feature do
  scenario 'Admin can log in and see dashboard ' do
    sign_in
    expect(page).to have_content "New loan"
    expect(page).to have_content "Return bike"
  end

  scenario 'Admin can log out' do

  end
end
