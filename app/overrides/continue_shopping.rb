Deface::Override.new(:virtual_path => "spree/orders/new",
                     :name => "continue_shopping_url",
                     :replace => "code[erb-loud]:contains('continue_shopping')",
                     :text => "<%= link_to t(:continue_shopping), root_path %>",
                     :original => "<%= link_to t(:continue_shopping), products_path %>",
                     :disabled => false)
                     
Deface::Override.new(:virtual_path => "spree/orders/edit",
                     :name => "continue_shopping_url",
                     :replace => "code[erb-loud]:contains('continue_shopping')",
                     :text => "<%= link_to t(:continue_shopping), root_path, :class => 'button continue' %>",
                     :original => "<%= link_to t(:continue_shopping), products_path, :class => 'button continue' %>",
                     :disabled => false)
