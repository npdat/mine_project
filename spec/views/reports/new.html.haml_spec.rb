require 'rails_helper'

RSpec.describe "reports/new", type: :view do
  before(:each) do
    assign(:report, Report.new(
      :report_name => "MyString",
      :path => "MyString",
      :user_id => 1
    ))
  end

end
