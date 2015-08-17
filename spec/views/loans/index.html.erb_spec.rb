require 'rails_helper'

RSpec.describe "loans/index", type: :view do
  before(:each) do
    assign(:loans, [
      Loan.create!(
        :contribution_status => "Contribution Status",
        :contribution_notes => "Contribution Notes",
        :loan_status => "Loan Status"
      ),
      Loan.create!(
        :contribution_status => "Contribution Status",
        :contribution_notes => "Contribution Notes",
        :loan_status => "Loan Status"
      )
    ])
  end

  it "renders a list of loans" do
    render
    assert_select "tr>td", :text => "Contribution Status".to_s, :count => 2
    assert_select "tr>td", :text => "Contribution Notes".to_s, :count => 2
    assert_select "tr>td", :text => "Loan Status".to_s, :count => 2
  end
end
