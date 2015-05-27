require 'rails_helper'

RSpec.describe "private_messages/show", type: :view do
  before(:each) do
    @private_message = assign(:private_message, PrivateMessage.create!(
      :content => "MyText",
      :user_id => 1,
      :report_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
