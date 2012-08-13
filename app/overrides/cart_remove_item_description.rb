Deface::Override.new(:virtual_path => "spree/orders/_line_item",
                     :name => "cart_remove_item_description",
                     :replace => "[data-hook='cart_item_description']",
                     :partial => "spree/orders/cart_item_description",
                     :disabled => false)
