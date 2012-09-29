require 'spec_helper'

describe "stores/show" do
  before(:each) do
    @store = assign(:store, stub_model(Store,
      :name => "Name",
      :max_capacity => 1,
      :current_capacity => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
