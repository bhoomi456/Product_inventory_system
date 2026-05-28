module InventoryManager
  def add_stock(id, quantity)
    product = find_product(id)
    if product

      if quantity > 0
      product.quantity += quantity
      puts "Stock Added with quantity ; #{quantity}"
      else
        raise "Invalid Quantity"
      end

    else
      puts "Product Not Found"
    end
  end
end