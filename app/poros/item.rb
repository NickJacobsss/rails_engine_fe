class Item
  attr_reader :name, :id

  def initialize(item_data)
    @name = item_data[:attributes][:name]
    @id = item_data[:id]
  end
end
