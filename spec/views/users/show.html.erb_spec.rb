require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first_name => "First Name",
      :last_name => "Last Name",
      :user_name => "User Name",
      :password_digest => "Password Digest"
    ))
  end


end
