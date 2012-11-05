Deface::Override.new(:virtual_path => "spree/orders/edit",
                     :name => "cart_buttons_after_form",
                     :replace => "#empty-cart",
                     :partial => "spree/shared/cart_buttons_after_form",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/orders/edit",
                    :name => "cart_buttons_inside_form",
                    :replace => "[data-hook='cart_buttons']",
                    :partial => "spree/shared/cart_buttons_inside_form",
                    :disabled => false)
                    
                    
Deface::Override.new(:virtual_path => "spree/orders/edit",
                      :name => "cart_summary_down",
                      :set_attributes => "#subtotal",
                      :attributes => {:class => ''},
                      :disabled => false)
