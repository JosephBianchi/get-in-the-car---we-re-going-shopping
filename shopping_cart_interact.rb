class Cart
  @total_cost = 0
  @after_tax_total_cost = 0

def initialize
  @collection_prods = []
end

def remove
  @collection_prods.delete_at self
end

def total_cost
  total = 0
  @collection_prods.each do |product|
    total += product.base_price
  end
  total
end

def after_tax_total_cost
  @after_tax_total_cost = @total_cost * @@tax_rate
end

def collection_prods
  @collection_prods
end

def add_to_cart(product)
  @collection_prods << product
end

end
