require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :username => "MyString",
      :password => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :is_admin => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_username[name=?]", "user[username]"

      assert_select "input#user_password[name=?]", "user[password]"

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "input#user_phone[name=?]", "user[phone]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_is_admin[name=?]", "user[is_admin]"
    end
  end
end
