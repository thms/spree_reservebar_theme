Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "properties_remove_from_left",
                     :remove => "[data-hook='product_properties']",
                     :disabled => false)
                     
Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "properties_add_to_right",
                     :insert_bottom => "[data-hook='cart_form']",
                     :partial => "spree/products/properties",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/products/show",
                    :name => "properties_remove_h6",
                    :sequence => {:after => "properties_add_to_right"},
                    :remove => "h6.product-section-title",
                    :disabled => false)
