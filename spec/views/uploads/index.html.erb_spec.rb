require 'rails_helper'

RSpec.describe "uploads/index", type: :view do
  before(:each) do
    assign(:uploads, [
      Upload.create!(
        :pdf_file_name => "Pdf File Name",
        :pdf_content_type => "Pdf Content Type",
        :pdf_file_size => 1
      ),
      Upload.create!(
        :pdf_file_name => "Pdf File Name",
        :pdf_content_type => "Pdf Content Type",
        :pdf_file_size => 1
      )
    ])
  end

  it "renders a list of uploads" do
    render
    assert_select "tr>td", :text => "Pdf File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pdf Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
