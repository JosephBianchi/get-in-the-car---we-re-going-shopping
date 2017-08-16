require './shopping_cart_interact.rb'

class Product

  @@tax_rate = 1.15

def initialize(name, base_price)
  @name = name
  @base_price = base_price
end

def base_price
  @base_price
end



def total_price
  total_price = @base_price * @@tax_rate
end

end

shoes = Product.new("nike", 100)
cart1 = Cart.new
cart1.add_to_cart(shoes)
shirt = Product.new("Brand", 80)
cart1.add_to_cart(shirt)
cart1.add_to_cart(shoes)
p cart1.collection_prods
p cart1.total_cost
