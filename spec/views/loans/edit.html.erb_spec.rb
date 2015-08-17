require 'rails_helper'

RSpec.describe "loans/edit", type: :view do
  before(:each) do
    @loan = assign(:loan, Loan.create!(
      :contribution_status => "MyString",
      :contribution_notes => "MyString",
      :loan_status => "MyString"
    ))
  end

  it "renders the edit loan form" do
    render

    assert_select "form[action=?][method=?]", loan_path(@loan), "post" do

      assert_select "input#loan_contribution_status[name=?]", "loan[contribution_status]"

      assert_select "input#loan_contribution_notes[name=?]", "loan[contribution_notes]"

      assert_select "input#loan_loan_status[name=?]", "loan[loan_status]"
    end
  end
end
