require 'rails_helper'

RSpec.describe "reports/show", type: :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :report_name => "Report Name",
      :path => "Path",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Report Name/)
    expect(rendered).to match(/Path/)
    expect(rendered).to match(/1/)
  end
end
