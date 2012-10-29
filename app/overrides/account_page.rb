Deface::Override.new(:virtual_path => "spree/users/show",
                     :name => "account_page_spacing",
                     :insert_before => "[data-hook='account_summary']",
                     :text => "<style>\nh3 {margin-top:24px;} #content {width:980px;} table {width:100%;} #user-info td, #user_addresses td{width:50%;}\n</style>\n",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/users/show",
                    :name => "account_page_summary",
                    :replace_contents => "[data-hook='account_summary']",
                    :partial => "spree/shared/account_summary",
                    :disabled => false)

Deface::Override.new(:virtual_path => "spree/users/show",
                    :name => "account_page_orders_title",
                    :replace => "code[erb-loud]:contains('my_orders')",
                    :text => "<%= t(:order_history) %>",
                    :disabled => false)