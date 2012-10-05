require 'spec_helper'

describe SessionsController do

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      User.create({
        first_name: 'Jason',
        last_name: 'Huang',
        user_name: 'JasonHuang',
        password: '1234',
        password_confirmation: '1234', 
        store_id: 1})
      session[:user_id] = 1
      
      get 'destroy'
      response.should be_success
    end
  end

end
