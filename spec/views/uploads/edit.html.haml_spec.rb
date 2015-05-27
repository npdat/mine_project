require 'rails_helper'

RSpec.describe "uploads/edit", type: :view do
  before(:each) do
    @upload = assign(:upload, Upload.create!(
      :pdf_file_name => "MyString",
      :pdf_content_type => "MyString",
      :pdf_file_size => 1
    ))
  end

  it "renders the edit upload form" do
    render

    assert_select "form[action=?][method=?]", upload_path(@upload), "post" do

      assert_select "input#upload_pdf_file_name[name=?]", "upload[pdf_file_name]"

      assert_select "input#upload_pdf_content_type[name=?]", "upload[pdf_content_type]"

      assert_select "input#upload_pdf_file_size[name=?]", "upload[pdf_file_size]"
    end
  end
end
