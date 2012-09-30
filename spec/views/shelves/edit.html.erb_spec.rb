require 'spec_helper'

describe "shelves/edit" do
  before(:each) do
    @shelf = assign(:shelf, stub_model(Shelf,
      :max_capacity => 1,
      :current_capacity => 1,
      :store => nil
    ))
  end

  it "renders the edit shelf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shelves_path(@shelf), :method => "post" do
      assert_select "input#shelf_max_capacity", :name => "shelf[max_capacity]"
      assert_select "input#shelf_current_capacity", :name => "shelf[current_capacity]"
      assert_select "input#shelf_store", :name => "shelf[store]"
    end
  end
end
