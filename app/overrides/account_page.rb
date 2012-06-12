Deface::Override.new(:virtual_path => "spree/users/show",
                     :name => "account_page_spacing",
                     :insert_before => "[data-hook='account_summary']",
                     :text => "<style>\nh3 {margin-top:24px;}\n</style>\n",
                     :disabled => false)
