require 'rails_helper'

RSpec.describe Item do

  it 'makes item objects from JSON response ' do
    item_data = {
      :id=>"1",
      :type=>"item",
      :attributes=>
      {:name=>"Item Nemo Facere"}
    }

    item = Item.new(item_data)

    expect(item).to be_a Item
    expect(item.name).to eq(item_data[:attributes][:name])
  end

end
