require 'spec_helper'

describe "ShelfProductInfos" do
  describe "GET /shelf_product_infos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get shelf_product_infos_path
      response.status.should be(200)
    end
  end
end
