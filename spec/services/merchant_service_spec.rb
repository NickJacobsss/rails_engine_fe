require 'rails_helper'

RSpec.describe "Merchant Service API " do

  it "returns list of all merchants" do
    parsed_json = MerchantService.get_merchants
    merchant = parsed_json.first
    expect(parsed_json).to be_a Array
    expect(merchant).to include :type, :attributes
    expect(merchant[:attributes][:name]).to eq("Schroeder-Jerde")
  end

  it "returns list of merchants items " do
    parsed_json = MerchantService.merchant_items(1)
    item = parsed_json.first
    expect(parsed_json).to be_a Array
    expect(item[:attributes][:name]).to eq("Item Nemo Facere")
  end

  it "returns 1 merchant " do
  end 

end
