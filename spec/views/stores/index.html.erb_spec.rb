require 'spec_helper'

describe "stores/index" do
  before(:each) do
    assign(:stores, [
      stub_model(Store,
        :name => "Name",
        :max_capacity => 1,
        :current_capacity => 2
      ),
      stub_model(Store,
        :name => "Name",
        :max_capacity => 1,
        :current_capacity => 2
      )
    ])
  end


end
