class MerchantFacade

  def self.all_merchants
    merchant_data = MerchantService.get_merchants

    merchant_data.map do |merchant_json|
      Merchant.new(merchant_json)
    end
  end

  def self.find_merchant(id)
   merchant_data = MerchantService.find_merchant(id)
   Merchant.new(merchant_data)
 end

  def self.get_items(merchant_id)
    item_data = MerchantService.merchant_items(merchant_id)

    item_data.map do |item_json|
      Item.new(item_json)
    end
  end

end
