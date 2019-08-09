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
  new_cart
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    if cart.keys.include? coupon[:item]
      if cart[coupon[:item]][:count] >= coupon[:num]
        coupon_item = "#{coupon[:item]} W/COUPON"
        if cart[coupon_item]
          cart[coupon_item][:count] += coupon[:num]
        else
          cart[coupon_item] = {
            :price => coupon[:cost]/coupon[:num],
            :clearance => cart[coupon[:item]][:clearance],
            :count => coupon[:num]
          }
          end
      cart[coupon[:item]][:count] -= coupon[:num]  
        end
      end
    end
cart
end

def apply_clearance(cart)
  cart.each do |item|
    if cart[item][:clearance]
      
    end  
  end  
end

def checkout(cart, coupons)
  # code here
end
