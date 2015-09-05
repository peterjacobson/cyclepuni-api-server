module Features
  module FeatureHelper
    def sign_in
      admin = FactoryGirl.create(:admin)
      visit root_path
      click_on "Admin sign in"
      fill_in "Email", with: admin.email
      fill_in "Password", with: admin.password
      click_on "Log in"
    end
  end
end
