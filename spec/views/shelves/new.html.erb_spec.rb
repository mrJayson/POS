require 'spec_helper'

describe "shelves/new" do
  before(:each) do
    Store.create({name: 'Central Branch', max_capacity: 2000})
    session[:store_id] = 1
    assign(:shelf, stub_model(Shelf,
      :aisle => 1,
      :max_capacity => 1,
      :current_capacity => 1,
      :store_id => 1
    ).as_new_record)
  end


end
