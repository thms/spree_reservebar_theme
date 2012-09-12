Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "product_minicart_dialog",
                     :insert_after => "[data-hook='product_show']",
                     :partial => "spree/shared/minicart_dialog",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/taxons/show",
                   :name => "taxon_products_mini_cart_dialog",
                   :insert_after => "[data-hook='taxon_products']",
                   :partial => "spree/shared/minicart_dialog",
                   :disabled => false)

Deface::Override.new(:virtual_path => "spree/taxons/show",
                   :name => "taxon_children_mini_cart_dialog",
                   :insert_after => "[data-hook='taxon_children']",
                   :partial => "spree/shared/minicart_dialog",
                   :disabled => false)
