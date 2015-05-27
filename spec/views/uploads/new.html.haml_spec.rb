require 'rails_helper'

RSpec.describe "uploads/new", type: :view do
  before(:each) do
    assign(:upload, Upload.new(
      :pdf_file_name => "MyString",
      :pdf_content_type => "MyString",
      :pdf_file_size => 1
    ))
  end

  it "renders new upload form" do
    render

    assert_select "form[action=?][method=?]", uploads_path, "post" do

      assert_select "input#upload_pdf_file_name[name=?]", "upload[pdf_file_name]"

      assert_select "input#upload_pdf_content_type[name=?]", "upload[pdf_content_type]"

      assert_select "input#upload_pdf_file_size[name=?]", "upload[pdf_file_size]"
    end
  end
end
