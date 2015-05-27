require 'rails_helper'

RSpec.describe "uploads/show", type: :view do
  before(:each) do
    @upload = assign(:upload, Upload.create!(
      :pdf_file_name => "Pdf File Name",
      :pdf_content_type => "Pdf Content Type",
      :pdf_file_size => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Pdf File Name/)
    expect(rendered).to match(/Pdf Content Type/)
    expect(rendered).to match(/1/)
  end
end
