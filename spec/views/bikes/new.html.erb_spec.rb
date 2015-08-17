require 'rails_helper'

RSpec.describe "bikes/new", type: :view do
  before(:each) do
    assign(:bike, Bike.new(
      :photo => "MyString",
      :name => "MyString",
      :description => "MyString",
      :size => "MyString"
    ))
  end

  it "renders new bike form" do
    render

    assert_select "form[action=?][method=?]", bikes_path, "post" do

      assert_select "input#bike_photo[name=?]", "bike[photo]"

      assert_select "input#bike_name[name=?]", "bike[name]"

      assert_select "input#bike_description[name=?]", "bike[description]"

      assert_select "input#bike_size[name=?]", "bike[size]"
    end
  end
end
