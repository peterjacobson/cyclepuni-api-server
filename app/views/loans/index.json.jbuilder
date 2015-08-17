json.array!(@loans) do |loan|
  json.extract! loan, :id, :date_due, :contribution_status, :contribution_notes, :loan_status
  json.url loan_url(loan, format: :json)
end
