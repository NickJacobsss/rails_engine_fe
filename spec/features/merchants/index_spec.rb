require 'rails_helper'

RSpec.describe "Merchant Index Page" do

  it "shows all merchants with links to show page" do
    visit '/merchants'
    expect(page).to have_link("Schroeder-Jerde")
    click_link("Schroeder-Jerde")
    expect(current_path).to eq("/merchants/1")
  end

end
