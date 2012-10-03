require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :first_name => "first_name",
          :last_name => "last_name",
          :user_name => "user_name",
          :password => "1",
          :password_confirmation => "1",
          :store_id => 1),
      stub_model(User,
        :first_name => "first_name",
          :last_name => "last_name",
          :user_name => "user_name",
          :password => "1",
          :password_confirmation => "1",
          :store_id => 1)
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
  end
end
