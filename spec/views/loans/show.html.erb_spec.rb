require 'rails_helper'

RSpec.describe "loans/show", type: :view do
  before(:each) do
    @loan = assign(:loan, Loan.create!(
      :contribution_status => "Contribution Status",
      :contribution_notes => "Contribution Notes",
      :loan_status => "Loan Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Contribution Status/)
    expect(rendered).to match(/Contribution Notes/)
    expect(rendered).to match(/Loan Status/)
  end
end
