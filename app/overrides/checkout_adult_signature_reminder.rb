Deface::Override.new(:virtual_path => "spree/checkout/edit",
                     :name => "adult_signature_reminder",
                     :insert_after => "code[erb-loud]:contains('checkout_form_')",
                     :partial => 'spree/checkout/adult_signature_reminder',
                     :disabled => false)