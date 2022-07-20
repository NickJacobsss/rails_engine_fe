require 'rails_helper'

RSpec.describe Merchant do

  it 'makes merchant objects from JSON response ' do
    merchant_data = {
      :id=>"1",
      :type=>"merchant",
      :attributes=>
      {:name=>"Schroeder-Jerde"}
    }

    merchant = Merchant.new(merchant_data)

    expect(merchant).to be_a Merchant
    expect(merchant.name).to eq(merchant_data[:attributes][:name])
  end

end
