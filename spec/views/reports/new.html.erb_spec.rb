require 'rails_helper'

RSpec.describe "reports/new", type: :view do
  before(:each) do
    assign(:report, Report.new(
      :report_name => "MyString",
      :path => "MyString",
      :user_id => 1
    ))
  end

  it "renders new report form" do
    render

    assert_select "form[action=?][method=?]", reports_path, "post" do

      assert_select "input#report_report_name[name=?]", "report[report_name]"

      assert_select "input#report_path[name=?]", "report[path]"

      assert_select "input#report_user_id[name=?]", "report[user_id]"
    end
  end
end
