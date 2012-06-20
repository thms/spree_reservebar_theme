# Move the wishlist form before the cart form to make valid html
Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "add_wish_to_cart_form",
                     :insert_before => "[data-hook='cart_form']",
                     :partial => "spree/products/wishlist_form",
                     :disabled => false)