require 'rails_helper'

RSpec.describe "private_messages/index", type: :view do
  before(:each) do
    assign(:private_messages, [
      PrivateMessage.create!(
        :content => "MyText",
        :user_id => 1,
        :report_id => 2
      ),
      PrivateMessage.create!(
        :content => "MyText",
        :user_id => 1,
        :report_id => 2
      )
    ])
  end

  it "renders a list of private_messages" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
