require 'rails_helper'

RSpec.describe "people/new", type: :view do
  before(:each) do
    assign(:person, Person.new(
      :name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :search_string => "MyString"
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input#person_name[name=?]", "person[name]"

      assert_select "input#person_phone[name=?]", "person[phone]"

      assert_select "input#person_email[name=?]", "person[email]"

      assert_select "input#person_search_string[name=?]", "person[search_string]"
    end
  end
end
