require 'rails_helper'

RSpec.describe "reports/edit", type: :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :report_name => "MyString",
      :path => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit report form" do
    render

    assert_select "form[action=?][method=?]", report_path(@report), "post" do

      assert_select "input#report_report_name[name=?]", "report[report_name]"

      assert_select "input#report_path[name=?]", "report[path]"

      assert_select "input#report_user_id[name=?]", "report[user_id]"
    end
  end
end
