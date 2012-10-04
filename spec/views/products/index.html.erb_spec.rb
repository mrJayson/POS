require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :barcode => "Barcode"
      ),
      stub_model(Product,
        :name => "Name",
        :barcode => "Barcode"
      )
    ])
  end


end
