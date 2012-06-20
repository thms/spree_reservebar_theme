Deface::Override.new(:virtual_path => "spree/checkout/_delivery",
                     :name => "add_placeholder_to_shipping_instructions",
                     :replace => "#minstrs",
                     :partial => "spree/checkout/special_instructions",
                     :disabled => false)