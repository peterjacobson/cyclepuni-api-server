require 'rails_helper'

RSpec.describe "bikes/index", type: :view do
  before(:each) do
    assign(:bikes, [
      Bike.create!(
        :photo => "Photo",
        :name => "Name",
        :description => "Description",
        :size => "Size"
      ),
      Bike.create!(
        :photo => "Photo",
        :name => "Name",
        :description => "Description",
        :size => "Size"
      )
    ])
  end

  it "renders a list of bikes" do
    render
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
  end
end
