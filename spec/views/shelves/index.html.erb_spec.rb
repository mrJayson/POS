require 'spec_helper'

describe "shelves/index" do
  before(:each) do
    Store.create({name: 'Northern Branch', max_capacity: 900})
    session[:store_id] = 1
    assign(:shelves, [
      stub_model(Shelf,
        :aisle => 1,
        :max_capacity => 2,
        :current_capacity => 3,
        :store_id => 1
      ),
      stub_model(Shelf,
        :aisle => 2,
        :max_capacity => 2,
        :current_capacity => 3,
        :store_id => 1
      )
    ])
  end


end
