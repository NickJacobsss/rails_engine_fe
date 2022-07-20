class MerchantService

  def self.get_merchants
    response = connection.get('/api/v1/merchants')
    data = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.merchant_items(merchant_id)
    response = connection.get("/api/v1/merchants/#{merchant_id}/items")
    data = JSON.parse(response.body, symbolize_names: true)[:data]
    data.first(5)
  end

  def self.find_merchant(id)
    response = connection.get("/api/v1/merchants/#{id}")
    data = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.connection
    Faraday.new(url: 'http://localhost:3000')
  end
end
