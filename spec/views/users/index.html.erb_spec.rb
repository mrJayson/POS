require 'spec_helper'

describe "users/index" do
  before(:each) do
    Store.create({name: 'Central Branch', max_capacity: 2000})
    session[:store_id] = 1
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


end
