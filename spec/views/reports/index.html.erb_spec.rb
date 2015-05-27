require 'rails_helper'

RSpec.describe "reports/index", type: :view do
  before(:each) do
    assign(:reports, [
      Report.create!(
        :report_name => "Report Name",
        :path => "Path",
        :user_id => 1
      ),
      Report.create!(
        :report_name => "Report Name",
        :path => "Path",
        :user_id => 1
      )
    ])
  end

  it "renders a list of reports" do
    render
    assert_select "tr>td", :text => "Report Name".to_s, :count => 2
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
