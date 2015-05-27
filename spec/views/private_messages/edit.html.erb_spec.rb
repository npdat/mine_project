require 'rails_helper'

RSpec.describe "private_messages/edit", type: :view do
  before(:each) do
    @private_message = assign(:private_message, PrivateMessage.create!(
      :content => "MyText",
      :user_id => 1,
      :report_id => 1
    ))
  end

  it "renders the edit private_message form" do
    render

    assert_select "form[action=?][method=?]", private_message_path(@private_message), "post" do

      assert_select "textarea#private_message_content[name=?]", "private_message[content]"

      assert_select "input#private_message_user_id[name=?]", "private_message[user_id]"

      assert_select "input#private_message_report_id[name=?]", "private_message[report_id]"
    end
  end
end
