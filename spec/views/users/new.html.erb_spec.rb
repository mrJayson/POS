require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :first_name => "MyString",
      :last_name => "MyString",
      :user_name => "MyString",
      :password_digest => "MyString"
    ).as_new_record)
  end


end
