Deface::Override.new(:virtual_path => 'spree/shared/_minicart_line_items',
                    :name => 'sanitize_product_name_of_mini_cart',
                    :replace_contents => "code[erb-loud]:contains('product_path')",
                    :text => "link_to sanitize(variant.product.name, :tags => %w(sup)), product_path(variant.product)",
                    :disabled => false)
                    
Deface::Override.new(:virtual_path => 'spree/orders/_line_item',
                    :name => 'sanitize_product_name_of_shopping_cart',
                    :replace_contents => "code[erb-loud]:contains('product_path')",
                    :text => "link_to sanitize(variant.product.name, :tags => %w(sup)), product_path(variant.product)",
                    :disabled => false)
                    
Deface::Override.new(:virtual_path => 'spree/shared/_order_details',
                    :name => 'sanitize_product_name_of_order_details',
                    :replace_contents => "code[erb-loud]:contains('product.name')",
                    :text => "sanitize(item.variant.product.name, :tags => %w(sup))",
                    :disabled => false)
                    
Deface::Override.new(:virtual_path => 'spree/admin/shared/_order_details',
                    :name => 'sanitize_product_name_of_admin_order_details',
                    :replace_contents => "code[erb-loud]:contains('product.name')",
                    :text => "sanitize(item.variant.product.name, :tags => %w(sup))",
                    :disabled => false)
