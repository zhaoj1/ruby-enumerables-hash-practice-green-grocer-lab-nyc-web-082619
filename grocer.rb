def consolidate_cart(cart)
  new_cart = {}
  cart.each { |item|
    if new_cart[item.keys[0]]
      new_cart[item.keys[0]][:count] += 1
    else 
      new_cart[item.keys[0]] = {
        :price => item.values[0][:price],
        :clearance => item.values[0][:clearance],
        :count => 1
      }
    end  
  }
  new
end

def apply_coupons(cart, coupons)
  coupons.each{ |coupon|
    if cart.keys.include?(coupon[:item])
      coupon_item = "#{coupon[:item]} W/COUPON"
        if cart[coupon_item]
          cart[coupon_item][:count] += coupon[:num]
        else
          cart[coupon]
  }
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
