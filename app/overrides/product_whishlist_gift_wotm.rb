Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "add_wishlist_gift_wotm_to_cart_form",
                     :insert_after => "#ratings_and_bookmarks",
                     :partial => "spree/products/whishlist_gift_wotm_form",
                     :disabled => false)
