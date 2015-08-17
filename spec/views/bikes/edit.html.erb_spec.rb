require 'rails_helper'

RSpec.describe "bikes/edit", type: :view do
  before(:each) do
    @bike = assign(:bike, Bike.create!(
      :photo => "MyString",
      :name => "MyString",
      :description => "MyString",
      :size => "MyString"
    ))
  end

  it "renders the edit bike form" do
    render

    assert_select "form[action=?][method=?]", bike_path(@bike), "post" do

      assert_select "input#bike_photo[name=?]", "bike[photo]"

      assert_select "input#bike_name[name=?]", "bike[name]"

      assert_select "input#bike_description[name=?]", "bike[description]"

      assert_select "input#bike_size[name=?]", "bike[size]"
    end
  end
end
