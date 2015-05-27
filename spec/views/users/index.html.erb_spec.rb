require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :username => "Username",
        :password => "Password",
        :address => "Address",
        :phone => "Phone",
        :email => "Email",
        :is_admin => "Is Admin"
      ),
      User.create!(
        :username => "Username",
        :password => "Password",
        :address => "Address",
        :phone => "Phone",
        :email => "Email",
        :is_admin => "Is Admin"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Is Admin".to_s, :count => 2
  end
end
