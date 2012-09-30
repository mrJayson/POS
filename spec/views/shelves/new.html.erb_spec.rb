require 'spec_helper'

describe "shelves/new" do
  before(:each) do
    assign(:shelf, stub_model(Shelf,
      :aisle => 1,
      :max_capacity => 1,
      :current_capacity => 1,
      :store => nil
    ).as_new_record)
  end

  it "renders new shelf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shelves_path, :method => "post" do
      assert_select "input#shelf_aisle", :name => "shelf[aisle]"
      assert_select "input#shelf_max_capacity", :name => "shelf[max_capacity]"
      assert_select "input#shelf_current_capacity", :name => "shelf[current_capacity]"
      assert_select "input#shelf_store", :name => "shelf[store]"
    end
  end
end
