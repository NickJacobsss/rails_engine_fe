require 'rails_helper'

RSpec.describe 'Merchant Facade' do

  it 'gives me an array of merchant object' do
    merchants = MerchantFacade.all_merchants

    expect(merchants).to be_a Array
    expect(merchants).to be_all Merchant
  end

  it "gives me an array of a merchants items " do
    items = MerchantFacade.get_items(1)
    expect(items).to be_a Array
    expect(items).to be_all Item
  end

end
