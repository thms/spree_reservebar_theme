# Overrides position for reviews and puts short stars on top, details at bottom.
#TODO: finish this, not working yet, shortratings needs to be wrapped in our own partial and achors from other defac actions do not work
Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "product_reviews_short_ratings",
                     :insert_before => "div#bookmarks",
                     :sequence => {:after => "product_detail_social_sharing"},
                     :partial => "spree/shared/shortrating",
                     :disabled => true)

# Disabled for now, intention is that they stay on the site
Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "converted_product_properties_767643482",
                     :insert_after => "[data-hook='product_recommendations']",
                     :sequence => {:after => "store_product_recommendations"},
                     :partial => "spree/shared/reviews_full",
                     :disabled => true)


