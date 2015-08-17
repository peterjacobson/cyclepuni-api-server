require 'rails_helper'

RSpec.describe "bikes/show", type: :view do
  before(:each) do
    @bike = assign(:bike, Bike.create!(
      :photo => "Photo",
      :name => "Name",
      :description => "Description",
      :size => "Size"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Size/)
  end
end
