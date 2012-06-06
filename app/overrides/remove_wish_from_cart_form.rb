# Remove the normal wishlist in the cart form, since we'll combine it with git options and whiskey of the month, easier to layout that way
Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "add_wish_to_cart_form",
                     :seqeunce => 100,
                     :disabled => true)
