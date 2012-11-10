Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "product_bottle_limit_exceeded_dialog",
                     :insert_after => "[data-hook='product_show']",
                     :partial => "spree/shared/bottle_limit_exceeded_dialog",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/products/index",
                    :name => "product__indexbottle_limit_exceeded_dialog",
                    :insert_after => "[data-hook='search_results']",
                    :partial => "spree/shared/bottle_limit_exceeded_dialog",
                    :disabled => false)

Deface::Override.new(:virtual_path => "spree/taxons/show",
                    :name => "taxon_products_bottle_limit_exceeded_dialog",
                    :insert_after => "[data-hook='taxon_products']",
                    :partial => "spree/shared/bottle_limit_exceeded_dialog",
                    :disabled => false)

Deface::Override.new(:virtual_path => "spree/taxons/show",
                    :name => "taxon_children_bottle_limit_exceeded_dialog",
                    :insert_after => "[data-hook='taxon_children']",
                    :partial => "spree/shared/bottle_limit_exceeded_dialog",
                    :disabled => false)

