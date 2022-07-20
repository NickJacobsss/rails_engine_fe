require "rails_helper"

RSpec.describe 'Merchant Items show spec' do

  it "shows all items for merchant" do
    visit '/merchants/1/items'
    save_and_open_page
    expect(page).to have_content("Item Nemo Facere")
  end

end
