Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "product_minicart_dialog",
                     :insert_after => "[data-hook='product_show']",
                     :partial => "spree/shared/minicart_dialog",
                     :disabled => false)

