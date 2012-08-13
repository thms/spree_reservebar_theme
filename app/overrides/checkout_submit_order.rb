Deface::Override.new(:virtual_path => "spree/checkout/_payment",
                     :name => "checkout_submit_order_button_text",
                     :replace => "code[erb-loud]:contains('save_and_continue')",
                     :text => "<%= submit_tag t(:submit_order), :class => 'continue button primary' %>",
                     :original => "<%= submit_tag t(:save_and_continue), :class => 'continue button primary' %>",
                     :disabled => false)
