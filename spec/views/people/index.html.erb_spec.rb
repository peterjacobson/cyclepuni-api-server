require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :search_string => "Search String"
      ),
      Person.create!(
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :search_string => "Search String"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Search String".to_s, :count => 2
  end
end
