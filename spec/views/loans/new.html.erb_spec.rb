require 'rails_helper'

RSpec.describe "loans/new", type: :view do
  before(:each) do
    assign(:loan, Loan.new(
      :contribution_status => "MyString",
      :contribution_notes => "MyString",
      :loan_status => "MyString"
    ))
  end

  it "renders new loan form" do
    render

    assert_select "form[action=?][method=?]", bike_loans_path(@bike), "post" do

      assert_select "input#loan_contribution_status[name=?]", "loan[contribution_status]"

      assert_select "input#loan_contribution_notes[name=?]", "loan[contribution_notes]"

      assert_select "input#loan_loan_status[name=?]", "loan[loan_status]"
    end
  end
end
