require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first_name => "MyString",
      :last_name => "MyString",
      :user_name => "MyString",
      :password_digest => "MyString"
    ))
  end


end
