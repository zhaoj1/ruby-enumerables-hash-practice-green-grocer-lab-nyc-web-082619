def consolidate_cart(cart)
  new = {}
  cart.each { |index|
    if new.key[index.keys]
      new.key[index.keys][:count] += 1
    else
      new.push(cart[index.key]) = { 
        :price
      }
  }
    
  }
  
  [
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"KALE"    => {:price => 3.00, :clearance => false}}
]
 
 {
  "AVOCADO" => {:price => 3.00, :clearance => true, :count => 2},
  "KALE"    => {:price => 3.00, :clearance => false, :count => 1}
}
  
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
