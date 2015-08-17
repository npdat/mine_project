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

  
end
