require 'spec_helper'

describe "warehouses/show" do
  before(:each) do
    @warehouse = assign(:warehouse, stub_model(Warehouse,
      :max_capacity => 1,
      :current_capacity => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
